<?php

function connect() {
    $connection = mysqli_connect("localhost", "root", "", "moodledb");
    if (mysqli_connect_errno($connection)) {
        die("Connection Failed");
    }
    mysqli_set_charset($connection, "utf8");
    return $connection;
}
    
function getAll($sql) {
    $connection = connect();
    $result = mysqli_query($connection, $sql);
    $obj = mysqli_fetch_object($result);
    $arr = array();
    while ($obj){
        $arr[]= $obj;
        $obj = mysqli_fetch_object($result);
    }
    mysqli_close($connection);
    return json_encode($arr);
}

