<?php
class tables_wans {
  function getTitle(&$record) {
    return 'Внешний канал: '.$record->val('name');
  }
}
?>
