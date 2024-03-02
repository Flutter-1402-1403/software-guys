<?php
if (isset($_POST['username']))
    $username = $_POST['username'];
else {
    echo "empty";
    exit();
}
if (isset($_POST['password']))
    $password = $_POST['password'];
else {
    echo "empty";
    exit();
}
function is_correct($user,$password){
    include("server-info.php");
    $result = $database_Connection->query("select * from  sign_up where Username = '$user' ")->num_rows;
    if ($result > 0) {
        $result1 = $database_Connection->query("select * from  sign_up where Username = '$user' ")->fetch_array(1)['Password'];

        if (password_verify($password,$result1))
            return true;
        else
            return false;
    }
    else
        return false;
}
if (is_correct($username,$password)){
    echo "ok";
}else{
    echo "no";
}
