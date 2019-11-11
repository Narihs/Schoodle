(function(){
    
    "use strict";
    var homeModule = angular.module("homeModule",[]);
    
    homeModule.controller("HomeController",function($scope,$http){
        $scope.getStudents = function(){
            $http
                .get("php/API.php?command=selectStudents")
                .then(function(response){
                    alert(JSON.stringify(response.data));
                })
                .catch(function(response){
                    alert("Error: " + response.status);
                });
        }
        $scope.getManagers = function(){
            $http
                .get("php/API.php?command=selectManagers")
                .then(function(response){
                    alert(JSON.stringify(response.data));
                })
                .catch(function(response){
                    alert("Error: " + response.status);
                });
        }
          $scope.getCourses = function(){
            $http
                .get("php/API.php?command=selectCourses")
                .then(function(response){
                    alert(JSON.stringify(response.data));
                })
                .catch(function(response){
                    alert("Error: " + response.status);
                });
        }
        
        
    });
    
})();