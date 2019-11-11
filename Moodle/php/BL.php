<?php

require_once 'DAL.php';

function selectAllStudents() {
    $sql = "select * from users where role='1'";
    return getAll($sql);
}
function selectAllManagers() {
    $sql = "select * from users where role='2'";
    return getAll($sql);
}
function selectAllCourses() {
    $sql = "select * from courses";
    return getAll($sql);
}