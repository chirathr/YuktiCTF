angular.
  module('challengeApp').
  config(['$locationProvider', '$routeProvider',
    function config($locationProvider, $routeProvider) {
      $locationProvider.hashPrefix('!');

      $routeProvider.
        when('/challenges', {
          template: '<challenge-list></challenge-list>'
        }).
        otherwise('/challenges');
    }
  ]);