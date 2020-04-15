<?php
class tables_dop_sogl {
  
  function getTitle(&$record) {
    return 'Доп.соглашение: '.$record->val('code');
  }
}
?>
