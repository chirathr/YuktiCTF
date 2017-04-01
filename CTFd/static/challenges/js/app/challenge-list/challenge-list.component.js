// Register the `challengeList` component on the `challengeList` module,
angular.
  module('challengeList').
  component('challengeList', {
    templateUrl: '/static/challenges/js/app/challenge-list/challenge-list.template.html',
    controller: ['$http',
      function challengeListController($http) {
        var self = this;
        this.selection = {
            "name": "Welcome to SIH hackathon",
            "description": "Click on a challange to start the game.",
            "start": true
        };
        $http.get('/chals').then(function(response) {
          self.challenges = response.data;

          self.level = [[], [], [], [], [], [], [], []];
            for (var i=1; i<=3; i++) {
                self.level[0].push(self.challenges.game[i-1]);
            }

            for (var i=4; i<=6; i++) {
                self.level[1].push(self.challenges.game[i-1]);
            }

            for (var i=7; i<=8; i++) {
                self.level[2].push(self.challenges.game[i-1]);
            }

            for (var i=9; i<=12; i++) {
                self.level[3].push(self.challenges.game[i-1]);
            }

            for (var i=13; i<=15; i++) {
                self.level[4].push(self.challenges.game[i-1]);
            }

            for (var i=16; i<17; i++) {
                self.level[5].push(self.challenges.game[i-1]);
            }

            for (var i=18; i<22; i++) {
                self.level[6].push(self.challenges.game[i-1]);
            }

            self.level[7].push(self.challenges.game[23]);

            console.log(self.level);
        });

        this.check_hidden = function(challenge, hidden) {
            if (hidden)
               return {
                    "name": "Challenge locked",
                    "description": "Solve previous challenges to unlock",
                    "start": true
                };
            else
                return challenge;
        };

        app.controller("HttpGetController", function ($scope, $http) {

        $scope.SendData = function () {
            var Indata = {};
            $http({url: "time.php", method: "POST", params: Indata});
        };

    });


      }
    ]
});
