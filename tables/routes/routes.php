<?php
class tables_routes {
  function getTitle(&$record) {
    return 'Маршрут: '.$record->val('net_name1').'->'.$record->val('net_name2');
  }

}
?>
