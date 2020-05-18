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

  function dhcp_static_leases__parse($value) {
    if (is_array($value)) {
      return $value;
    } else {
      $arr2 = array();
      if (!empty($value)) {
        $arr1 = explode(';', $value);
        foreach ($arr1 as $v) {
  	  list($name, $mac, $ip) = explode(',', $v);
          array_push($arr2, ['dsl_name' => $name, 'dsl_mac' => $mac, 'dsl_ip' => $ip]);
        }
      }
      return $arr2;
    }
  }

  function dhcp_static_leases__serialize($value) {
    if (is_array($value)) {
      $arr1 = array();
      foreach ($value as $v) {
        array_push($arr1, trim($v['dsl_name']).','.trim($v['dsl_mac']).','.trim($v['dsl_ip']));
      }
      return implode(';', $arr1);
    }
    else
      return '';
  }

  function dhcp_static_leases__toString($value) {
    $arr1 = array();
    foreach ($value as $v) {
      array_push($arr1, $v['dsl_name'].': '.$v['dsl_mac'].' -> '.$v['dsl_ip']);
    }
    return implode("\n", $arr1);
  }
  //----------------------------------------------
}
?>
