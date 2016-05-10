var myApp = angular.module('patient-card-catalogue', ['ngRoute', 'ngResource']);

myApp.factory('dataService', ['$resource', function($resource){
  return $resource('/patients/:id.json', {id: '@id'});
}]);

myApp.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {
  $routeProvider.when('/',{
    templateUrl: '/templates/patients/index.html',
    controller: 'patientController'
  }).when('/patients',{
    templateUrl: '/templates/patients/index.html',
    controller: 'patientController'
  }).when('/patients/:id',{
    templateUrl: '/templates/patients/show.html',
    controller: 'patientController'
  }).when('/patient/:id',{
    templateUrl: '/templates/patients/show.html',
    controller: 'patientController'
  }).otherwise('/');
  $locationProvider.html5Mode(true);
}]);

myApp.controller("patientController", ['$scope', '$resource', 'dataService', '$routeParams', '$rootScope', '$location', function($scope, $resource, dataService, $routeParams, $rootScope, $location) {
  dataService.get({id: $routeParams.id}).$promise.then(function(data) {
    $scope.patients = data.patients;
    $scope.patient = data.patient;
    $scope.reports = data.reports;
    $scope.patient_count = data.patient_count;
    $scope.report_count = data.report_count;

    $scope.rate = function(obj) {

      var rating = '';
      var limit = 0.1;
      var reading = 0;
      var range = [];
      angular.forEach(obj, function(value, key) {
        switch(key){
          case 'value':
              reading = parseFloat(value);
            break;
          case 'normal_range':
              range = value.split('-');
              if(range[1] == null) {
                range = value.split('<= ');
                if(range[1] == null) {
                  range = value.split('< ');
                }
              }
              
              if(!range[0]) {
                range[0] = 0;
              }
              range[0] = parseFloat(range[0]);
              range[1] = parseFloat(range[1]);
            break;
        }
      });

      if(range.length > 1 && !isNaN(reading) && !isNaN(range[0]) && !isNaN(range[1])) {
        var min = range[0] - range[0] * limit;
        var max = range[1] + range[1] * limit;
        if(reading >= range[0] && reading <= range[1]) {
          rating = '';
        } else if(reading >= min && reading <= max) {
          rating = 'warning';
        } else {
          rating = 'critical';
        }
      }

      return rating;

    };
  }).catch(function() {
    // $scope.reports = 'error';
  });
}]);
