<?php
error_reporting(0);
trigger_error("user warning!", E_USER_WARNING);

$my_pass = "";
$my_username = "admin";
$host = "localhost";
$DB_name = "flutter_db";
    $database_Connection = new mysqli($host,$my_username,$my_pass,$DB_name);
if ($database_Connection->connect_errno){
    echo "مشکلی در اتصال به سرور وجود دارد!" . $database_Connection->connect_error . "-----" . $database_Connection->connect_errno;
    exit();
}
$database_Connection->set_charset("utf8");

