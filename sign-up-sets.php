<?php
if (isset($_POST['introduction']))
    $user_intro = $_POST['introduction'];
else {
    echo "empty";
    exit();
}
if (isset($_POST['username']))
    $user_name = $_POST['username'];
else {
    echo "empty";
    exit();
}
if (isset($_POST['password']))
    $user_pass = $_POST['password'];
else {
    echo "empty";
    exit();
}
if (isset($_POST['email']))
    $user_email = $_POST['email'];
else {
    echo "empty";
    exit();
}

function not_exists($column, $value)
{
    include("server-info.php");

    $result = $database_Connection->query("select * from sign_up where $column = '$value'")->num_rows;
    if ($result > 0)
    {
        exit("$column duplication");
    }
}
function insert($intro,$user,$pass,$email){
    include("server-info.php");
    $pass = password_hash($pass,PASSWORD_DEFAULT);
    $result = $database_Connection->query("INSERT INTO `sign_up`(`user_id`, `user-introduction`, `Email`, `Username`, `Password`, `sign-up-log`) VALUES (null,'$intro','$email','$user','$pass',current_timestamp)");
    //echo "INSERT INTO `sign_up`(`user_id`, `user-introduction`, `Email`, `Username`, `Password`, `sign-up-log`) VALUES (null,'$intro','$email','$user','$pass',current_timestamp)";
    if ($result)
        return true;
    else
        return false;
}

not_exists("Email", $user_email);
not_exists("Username", $user_name);
if (insert($user_intro,$user_name,$user_pass,$user_email))

echo "successful:)";

/*if (isset($_POST['introduction']))
    $user_intro = $_POST['introduction'];;

if (isset($_POST['username']))
    $user_name = $_POST['username'];;
if (isset($_POST['password']))
    $user_pass = $_POST['password'];
if (isset($_POST['email']))
    $user_email = $_POST['email'];*/