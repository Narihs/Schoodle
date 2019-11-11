(function(){
    
    "use strict";
    
    var appModule = angular.module("appModule",["ngRoute","homeModule"]);
    
    appModule.config(function($routeProvider){
      
        $routeProvider.when("/home",{
            controller:"HomeController",
            templateUrl:"html/home.html"
        });
        
         $routeProvider.otherwise({
            redirectTo: "/home"
        });
    });
    
    
})();
