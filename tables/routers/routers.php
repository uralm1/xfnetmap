<?php
class tables_routers {
  
  function getTitle(&$record) {
    return 'Маршрутизатор: '.$record->val('host_name');
  }

  function ssh_icmp_from_wans_ips__parse($value) {
    if (is_array($value)) {
      return $value;
    } else {
      $arr2 = array();
      if (!empty($value)) {
	$arr1 = explode(',', $value);
	foreach ($arr1 as $v) {
	  array_push($arr2, ['IP' => $v]);
	}
      }
      return $arr2;
    }
  }

  function ssh_icmp_from_wans_ips__serialize($value) {
    if (is_array($value)) {
      $arr1 = array_column($value, 'IP');
      return implode(',', array_map('trim', $arr1));
    }
    else
      return '';
  }

  function ssh_icmp_from_wans_ips__toString($value) {
    return implode(', ', array_column($value, 'IP'));
  }
}
?>
