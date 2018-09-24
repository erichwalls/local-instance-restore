$sugar_config['dbconfig'] = array(
    'db_host_name' => '',
    'db_host_instance' => '',
    'db_user_name' => 'root',
    'db_password' => '',
    'db_name' => 'current',
    'db_type' => 'mysql',
    'db_port' => '',
    'db_manager' => 'MysqliManager',
);
$sugar_config['site_url'] = 'http://localhost/current';
$sugar_config['full_text_engine']['Elastic']['host'] = 'localhost';
$sugar_config['host_name'] = 'localhost';
$sugar_config['xhprof_config']['enable'] = false;
$sugar_config['xhprof_config']['log_to'] = '/var/www/html/xhprofreports';
// x where x is a number and 1/x requests are profiled. So to sample all requests set it to 1
$sugar_config['xhprof_config']['sample_rate'] = 1;
// array of function names to ignore from the profile (pass into xhprof_enable)
$sugar_config['xhprof_config']['ignored_functions'] = array();
// flags for xhprof
$sugar_config['xhprof_config']['flags'] = XHPROF_FLAGS_CPU + XHPROF_FLAGS_MEMORY;
