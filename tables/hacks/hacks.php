<?php
class tables_hacks {
  
  function getTitle(&$record) {
    return 'Хак: '.$record->val('codename');
  }
}
?>
