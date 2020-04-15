<?php
class tables_tunnels {
  function getTitle(&$record) {
    return 'Туннель: '.$record->val('host_name1').'->'.$record->val('host_name2');
  }

}
?>
