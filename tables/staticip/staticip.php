<?php
class tables_staticip {
  function getTitle(&$record) {
    return 'Устройство: '.$record->val('name');
  }
}
?>
