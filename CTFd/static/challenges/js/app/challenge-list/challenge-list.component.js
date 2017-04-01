// Register the `challengeList` component on the `challengeList` module,
angular.
  module('challengeList').
  component('challengeList', {
    templateUrl: '/static/challenges/js/app/challenge-list/challenge-list.template.html',
    controller: ['$http',
      function challengeListController($http) {
        var self = this;
        this.selection = {
            "category": "Cryptography",
            "description": "Decrypt the contents of the letter.",
            "files": [],
            "hint": "You need this number \"10\".",
            "id": 1,
            "name": "Challenge 1",
            "tags": [],
            "type": "standard",
            "value": 10
        };
        $http.get('/chals').then(function(response) {
          self.challenges = response.data;
        });
      }
    ]
});
