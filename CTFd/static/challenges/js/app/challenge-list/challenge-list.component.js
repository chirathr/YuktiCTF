// Register the `challengeList` component on the `challengeList` module,
angular.
  module('challengeList').
  component('challengeList', {
    templateUrl: '/static/challenges/js/app/challenge-list/challenge-list.template.html',
    controller: ['$http', '$scope',
      function challengeListController($http, $scope) {
        var self = this;
        this.selection = {
            "name": "Welcome to Yukti CTF",
            "description": "Click on a challange to start the game.",
            "start": true
        };
        $http.get('/chals').then(function(response) {
          self.challenges = response.data;
          self.nonce = self.challenges.nonce;
          console.log(self.challenges.nonce);
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
                    "start": true,
                    "hidden": true
                };
            else
                return challenge;
        };
          this.flag = '';
              $scope.result = '';



          this.processForm = function(key, id, nonce){
              // var v = {key: key, nonce: nonce};
              // $http.post('/chal/' + id.toString(), v).success(function(data) {
              //   $scope.result = data;
              //   console.log(data);
              //
              // });

              var xsrf = $.param({key: key, nonce: nonce});
              $http({
                    method: 'POST',
                    url: '/chal/' + id.toString(),
                    data: xsrf,
                    headers: {'Content-Type': 'application/x-www-form-urlencoded'}
              }).then(function successCallback(response) {
                self.response = response;
              }, function errorCallback(response) {
                self.response = response;
              });
          };

      }
    ]
});