<?php //Main Application access point
require_once "/var/www/net/xfnetmap/xf/public-api.php";

//default sort
if (!isset($_REQUEST['-sort'])) {
  if (@$_REQUEST['-table'] == 'repo') {
    $_REQUEST['-sort'] = $_GET['-sort'] = 'w desc';
  } elseif (@$_REQUEST['-table'] == 'departments') {
    $_REQUEST['-sort'] = $_GET['-sort'] = 'dept_name asc';
  } elseif (@$_REQUEST['-table'] == 'lans') {
    $_REQUEST['-sort'] = $_GET['-sort'] = 'router_id asc';
  } elseif (@$_REQUEST['-table'] == 'wans') {
    $_REQUEST['-sort'] = $_GET['-sort'] = 'router_id asc';
  }
}

df_init(__FILE__, "xf")->display();
