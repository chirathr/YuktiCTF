// Register the `challengeList` component on the `challengeList` module,
angular.
  module('challengeList').
  component('challengeList', {
    templateUrl: '/static/challenges/js/app/challenge-list/challenge-list.template.html',
    controller: ['$http',
      function challengeListController($http) {
        var self = this;
        this.data = {};

        $http.get('/chals').then(function(response) {
          self.challenges = response.data;
        });
      }
    ]
});
