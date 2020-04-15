<?php
class tables_vpns {
  function getTitle(&$record) {
    return 'Узел виртуальной сети: '.$record->val('host_name');
  }

  /*function priv_key__permissions(&$record) {
    $perms = Dataface_PermissionsTool::NO_ACCESS();
    $perms['view'] = 1;
    return $perms;
  }*/
}
?>
