<?php
class tables_departments {
  
  function getTitle(&$record) {
    return 'Подразделение: '.$record->val('dept_name');
  }
}
?>
