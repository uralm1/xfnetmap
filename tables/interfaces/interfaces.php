<?php
class tables_interfaces {
  function getTitle(&$record) {
    return 'Интерфейс: '.$record->val('name');
  }

  //----------------------------------------------
}
?>
