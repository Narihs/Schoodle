<?php

require_once 'BL.php';
$command = $_REQUEST["command"];

switch ($command){
   case "selectStudents":
       echo selectAllStudents();
       break;
   case "selectManagers":
       echo selectAllManagers();
       break;
    case "selectCourses":
       echo selectAllCourses();
       break;
}
