<?php
class tables_dogovors {
  
  function getTitle(&$record) {
    return 'Договор: '.$record->val('prov_code');
  }
}
?>
