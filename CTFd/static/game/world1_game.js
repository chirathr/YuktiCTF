var game = new Phaser.Game(640, 400, Phaser.AUTO, '', { preload: preload, create: create, update: update, render: render });

function preload() {

    game.load.image('house', 'images/house.png');
    game.load.image('computer', 'images/computer.png');
    game.load.image('door', 'images/door.png');
    game.load.spritesheet('player', 'images/player.png', 32, 48);
    game.load.image('popup', 'images/chall_screen1.png');
    game.load.image('close', 'images/closeButton.png');
    game.load.image('submit', 'images/submit.png');
    game.load.image('dialogue', 'images/dialogue.png');
    game.load.audio('music', 'Vande_Mataram_Instrumental.mp3');

    /*
    game.load.image('o1', 'images/a1.png');
    game.load.image('o2', 'images/a2.png');
    game.load.image('o3', 'images/a3.png');
    game.load.image('o4', 'images/a4.png');
    game.load.image('o5', 'images/a5.png');
    game.load.image('o6', 'images/a6.png');
    game.load.image('o7', 'images/a7.png');
    game.load.image('o8', 'images/a8.png');
    game.load.image('o9', 'images/a9.png');
    game.load.image('o10', 'images/a10.png');
    game.load.image('o11', 'images/a11.png');
    game.load.image('o12', 'images/a12.png');
    game.load.image('o13', 'images/a13.png');
    */
    //game.load.image('collide', 'images/housecollide.png');

}


var computer;
var door;
var tween = null;
var tween1 = null;
var some;
var checkFlag = false;
var map;
var count = 0;
var music;

function create() {

    game.physics.startSystem(Phaser.Physics.ARCADE);


    game.add.tileSprite(0, 0, 640, 800, 'house');  // For the maps
    game.world.setBounds(0, 0, 640, 800);               // For the maps

    //map.scale.setTo(2, 2);

    //map = game.add.tileSprite(0, 0, 1280, 780, 'collide');
    //map.enableBody = true;

    music = game.add.sound('music');
    music.play();


    player = game.add.sprite(game.world.width/2, game.world.height/2, 'player');
    game.physics.arcade.enable(player);

    player.body.bounce.y = 0.1;
    player.body.gravity.y = 0;
    player.body.collideWorldBounds = true;

    player.animations.add('up', [12, 13, 14, 15], 10, true);
    player.animations.add('down', [0, 1, 2, 3], 10, true);
    player.animations.add('left', [4, 5, 6, 7], 10, true);
    player.animations.add('right', [8, 9, 10, 11], 10, true);


    door = game.add.group();
    door.enableBody = true;
    var door_icon = door.create(300, game.world.height-33, 'door');
    door_icon.body.immovable = true;


    computer = game.add.group();
    computer.enableBody = true;

    var computer_icon_1 = computer.create(130, 0, 'computer');
    computer_icon_1.body.immovable = true;

    var computer_icon_2 = computer.create(770, 0, 'computer');
    computer_icon_2.body.immovable = true;

    this.key = game.input.keyboard.addKey(Phaser.Keyboard.ENTER);
    //this.key2 = game.input.keyboard.addKey();


    game.camera.follow(player); //  For the maps

    var x = game.world.centerX;
    var y = game.world.centerY;

    popup = game.add.sprite(x, y-200, 'popup');
    popup.alpha = 1;
    popup.anchor.set(0.5);
    popup.inputEnabled = true;


    //  Position the close button to the top-right of the popup sprite (minus 8px for spacing)
    var pw = (popup.width/3);
    var ph = (popup.height/3);

    //  And click the close button to close it down again
    var closeButton = game.make.sprite(pw+130, -ph-130, 'close');
    closeButton.inputEnabled = true;
    closeButton.input.priorityID = 1;
    closeButton.input.useHandCursor = true;
    closeButton.events.onInputDown.add(closeWindow, this);

    //  Add the "close button" to the popup window image
    popup.addChild(closeButton);



    //  And click the close button to close it down again
    var submitButton = game.make.sprite(pw-175, -ph+525, 'submit');
    submitButton.inputEnabled = true;
    submitButton.input.priorityID = 2;
    submitButton.input.useHandCursor = true;
    submitButton.events.onInputDown.add(validateFlag, this);
    submitButton.scale.setTo(1);

    //  Add the "close button" to the popup window image
    popup.addChild(submitButton);



    //  Hide it awaiting a click
    popup.scale.set(0);

    game.add.plugin(PhaserInput.Plugin);
    Flag = game.add.inputField(200, 300, {
    font: '18px Arial',
    fill: '#212121',
    fontWeight: 'bold',
    width: 150,
    padding: 8,
    borderWidth: 1,
    borderColor: '#000',
    borderRadius: 6,
    placeHolder: 'Flag',
    type: PhaserInput.InputType.text,
    blockInput: false
    });
    Flag.inputEnabled = true;
    Flag.scale.set(0);
    PhaserInput.onKeyboardClose.addOnce(function() {
    this.resizeBackgroundImage();
    //Flag.scale.set(0);
    });

    //popup.body.collideWorldBounds = true;


    game.time.events.add(1000,
        function() {

          dialogue = game.add.sprite(game.world.width/2-100, game.world.height/2 + 100, 'dialogue');
        });



}


function update() {

    var intDoor = game.physics.arcade.collide(door, player);
    var intComputer = game.physics.arcade.collide(player, computer);
    //var col = game.physics.arcade.collide(player, map);


    var cursor = game.input.keyboard.createCursorKeys();

    player.body.velocity.x = 0;
    player.body.velocity.y = 0;

    if (cursor.left.isDown) {

        player.body.velocity.x = -300;
        player.animations.play('left');
    }

    else if (cursor.right.isDown) {

        player.body.velocity.x = 300;
        player.animations.play('right');
    }

    else if (cursor.down.isDown) {

      player.body.velocity.y = 300;
      player.animations.play('down');
    }

    else if (cursor.up.isDown) {

      player.body.velocity.y = -300;
      player.animations.play('up');
    }

    else {
        player.animations.stop();
    }

    game.input.keyboard.onUpCallback = function () {

      dialogue.destroy();
    }

    if(intComputer && this.key.isDown)       // checks if player is touching target sprite AND has pressed ENTER
    {    print_computer();

      }                                  // somehow works if player is ON (above) the button, not is player is besides it.

    if(intDoor && this.key.isDown)
        next_level();

}

function print_computer() {

  cur_game = game;
  openWindow(1);
}

function next_level() {

    if (checkFlag === true) {

    alert('Welcome to the World!');
  }
  else {
    alert('Solve the challenge first!');
  }
}


function render() {

  /*
    game.debug.cameraInfo(game.camera, 32, 32); //  These commands are for
    game.debug.spriteCoords(player, 32, 500);   // debugging, not running the game.
    */

}



function openWindow(id) {
    //var Flag;
    count = id;
    //alert(count);
    display_chall_details();
    if ((tween !== null && tween.isRunning) || popup.scale.x === 1)
    {
        return;
    }
    else {
    //  Create a tween that will pop-open the window, but only if it's not already tweening or open
    tween = game.add.tween(popup.scale).to( { x: 0.5, y: 0.45 }, 1000, Phaser.Easing.Elastic.Out, true);
    tween = game.add.tween(Flag.scale).to( { x: 1, y: 1 }, 1000, Phaser.Easing.Elastic.Out, true);

    }


}

var chal_text;


var challenge_dict = {'id':1};

function get_challenge() {

  if (count === 1)
    challenge_dict = {'title':'CAESAR CIPHER', 'description':'This is a Cryptography challenge,\n maybe you should use Caesar Cipher?',
    'hint':'USE CAESAR CIPHER', 'value':10, 'category':'Cryptography', 'link':'http://localhost/html/game_phase3/images/challenge.pdf'};

  if (count === 2)
    challenge_dict = {'title':'REVERSE IMAGE?', 'description':'What can you find in this image?',
    'hint':'Use Reverse Image Search?', 'value':20, 'category':'Forensics', 'link':'mahan.com'};

  if (count === 3)
    challenge_dict = {'title':'Debug?', 'description':'Come on, read me!', 'hint': 'Inspect Element?',
      'value':30, 'category':'Web', 'link':'tarun.com'};
}

function display_chall_details() {

    get_challenge();
    //alert(id);
    //chall_text.concat('Title: '.concat(challenge_dict.'title'.concat('Description: '.concat(challenge_dict.'description'.concat()))

    var textl = 'Download File';
    var linkt = textl.link(challenge_dict['link']);
    document.getElementById.innerHTML = linkt;
    var challenge_text = 'Title: ' + challenge_dict['title'] + '\n' + 'Description: ' +
      challenge_dict['description'] + '\n' + 'Hint: ' + challenge_dict['hint'] +
      '\n' + 'Category: ' + challenge_dict['category'] + '\n' + 'Points: ' +
        challenge_dict['value'] + '\n' + 'Link to file available in the website.\n';

    chal_text = cur_game.add.text(cur_game.world.width/3-200, cur_game.world.height/2-370, challenge_text, { font: "23px italic", fill: "#000000", align: "left" });

}

function closeWindow() {

    chal_text.destroy();
    chal_text.destroy();
    chal_text.destroy();
    chal_text.destroy();


    if (tween && tween.isRunning || popup.scale.x === 0.1)
    {
        return;
    }
    else {
        //  Create a tween that will close the window, but only if it's not already tweening or closed
        tween = game.add.tween(popup.scale).to( { x: 0, y: 0 }, 500, Phaser.Easing.Elastic.In, true);
        tween = game.add.tween(Flag.scale).to( { x: 0, y: 0 }, 500, Phaser.Easing.Elastic.In, true);

    }

}

var flag_dict = {'id':1}

function loadFlag() {

  if (count === 1)
    flag_dict = {'id':1, 'flag':'Yay!'};

  if (count === 2)
    flag_dict = {'id':2, 'flag':'namaste'};

  if (count === 3)
    flag_dict = {'id':3, 'flag':'web_first'};
}

function validateFlag() {

  loadFlag();
  console.log(flag_dict['flag'], Flag.value);
    if(flag_dict['flag'] === Flag.value) {
      checkFlag = true;
      alert('Correct!\nYou have won ' + challenge_dict['value'] + ' points!');
    }

    else {
      alert('Try again...');
    }
}
