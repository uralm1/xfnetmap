<?php
class tables_nets {
  
  function getTitle(&$record) {
    return 'Подсеть: '.$record->val('name');
  }

  //----------------------------------------------
  function dns_list__parse($value) {
    if (is_array($value)) {
      return $value;
    } else {
      $arr2 = array();
      if (!empty($value)) {
	$arr1 = explode(',', $value);
	foreach ($arr1 as $v) {
	  array_push($arr2, ['DNS IP' => $v]);
	}
      }
      return $arr2;
    }
  }

  function dns_list__serialize($value) {
    if (is_array($value)) {
      $arr1 = array_column($value, 'DNS IP');
      return implode(',', array_map('trim', $arr1));
    }
    else
      return '';
  }

  function dns_list__toString($value) {
    return implode(', ', array_column($value, 'DNS IP'));
  }
  //----------------------------------------------
}
?>
