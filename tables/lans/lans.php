<?php
class tables_lans {
  function getTitle(&$record) {
    return 'Локальный интерфейс: '.$record->val('name');
  }

  //----------------------------------------------
  function routes__parse($value) {
    if (is_array($value)) {
      return $value;
    } else {
      $arr2 = array();
      if (!empty($value)) {
        $arr1 = explode(';', $value);
        foreach ($arr1 as $v) {
  	  list($target, $netmask, $gateway) = explode(',', $v);
          array_push($arr2, ['target' => $target, 'netmask' => $netmask, 'gateway' => $gateway]);
        }
      }
      return $arr2;
    }
  }

  function routes__serialize($value) {
    if (is_array($value)) {
      $arr1 = array();
      foreach ($value as $v) {
        array_push($arr1, trim($v['target']).','.trim($v['netmask']).','.trim($v['gateway']));
      }
      return implode(';', $arr1);
    }
    else
      return '';
  }

  function routes__toString($value) {
    $arr1 = array();
    foreach ($value as $v) {
      array_push($arr1, $v['target'].' / '.$v['netmask'].' via '.$v['gateway']);
    }
    return implode("\n", $arr1);
  }
  //----------------------------------------------
}
?>
