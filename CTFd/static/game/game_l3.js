checkFlag = false;



var game3 = new Phaser.Game(640, 400, Phaser.AUTO, '', { preload: preload_3, create: create_3, update: update_3, render: render_3 });

function preload_3() {

    game3.load.image('land', 'images/world3.png');
    game3.load.spritesheet('player', 'images/player.png', 32, 48);
    game3.load.image('new_computer', 'images/new_computer.png');
    game3.load.image('popup', 'images/chall_screen.png');
    game3.load.image('close', 'images/orb-red.png');
    game3.load.image('submit', 'images/submit.png');
    game3.load.image('door', 'images/door.png');
}


function create_3() {

    game3.physics.startSystem(Phaser.Physics.ARCADE);

    var map = game3.add.tileSprite(0, 0, 640, 400, 'land');  // For the maps
    game3.world.setBounds(0, 0, 640, 400);               // For the maps
    //game3.scale.setTo();

    player = game3.add.sprite(game3.world.width/2, game3.world.height/2+100, 'player');
    game3.physics.arcade.enable(player);

    player.body.bounce.y = 0.1;
    player.body.gravity.y = 0;
    player.body.collideWorldBounds = true;

    player.animations.add('up', [12, 13, 14, 15], 10, true);
    player.animations.add('down', [0, 1, 2, 3], 10, true);
    player.animations.add('left', [4, 5, 6, 7], 10, true);
    player.animations.add('right', [8, 9, 10, 11], 10, true);

    new_computer = game3.add.group();
    new_computer.enableBody = true;
    var new_computer_icon = new_computer.create(504, 185, 'new_computer');
    new_computer_icon.body.immovable = true;

    door = game3.add.group();
    door.enableBody = true;
    var new_door_icon = door.create(290, 353, 'door');
    new_door_icon.body.immovable = true;

    this.key = game3.input.keyboard.addKey(Phaser.Keyboard.ENTER);

    game3.camera.follow(player); //  For the maps


    /*
    popup = game3.add.sprite(game3.world.centerX, game3.world.centerY, 'popup');
    popup.alpha = 1;
    popup.anchor.set(0.5);
    popup.inputEnabled = true;


    //  Position the close button to the top-right of the popup sprite (minus 8px for spacing)
    var pw = (popup.width / 2);
    var ph = (popup.height / 2);

    //  And click the close button to close it down again
    var closeButton = game3.make.sprite(pw, -ph, 'close');
    closeButton.inputEnabled = true;
    closeButton.input.priorityID = 1;
    closeButton.input.useHandCursor = true;
    closeButton.events.onInputDown.add(closeWindow, this);

    //  Add the "close button" to the popup window image
    popup.addChild(closeButton);



    //  And click the close button to close it down again
    var submitButton = game3.make.sprite(pw-175, -ph+425, 'submit');
    submitButton.inputEnabled = true;
    submitButton.input.priorityID = 2;
    submitButton.input.useHandCursor = true;
    submitButton.events.onInputDown.add(validateFlag, this);
    submitButton.scale.setTo(0.5);

    //  Add the "close button" to the popup window image
    popup.addChild(submitButton);



    //  Hide it awaiting a click
    popup.scale.set(0);

    game3.add.plugin(PhaserInput.Plugin);
    Flag = game3.add.inputField(350+185, 400+150, {
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
    */

}


function update_3() {

    var intComputer = game3.physics.arcade.collide(new_computer, player);
    var intDoor = game3.physics.arcade.collide(door, player);

    var cursor = game3.input.keyboard.createCursorKeys();

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

    if(intComputer && this.key.isDown)       // checks if player is touching target sprite AND has pressed ENTER
        print_l3computer();                    // somehow works if player is ON (above) the button, not is player is besides it.


        if(intDoor && this.key.isDown)       // checks if player is touching target sprite AND has pressed ENTER
            print_l3door();
}

function print_l3computer()
{
  //alert(checkFlag);
  alert('Aur khushi manao!');
  if (checkFlag === false)
  {
      cur_game = game3;
    openWindow(3);
  }
}

function print_l3door() {


  alert('Khushi manao');
  if(checkFlag === false)
    alert('Solve the problem!');

  else {
      alert('Hiya');
  }
}

function render_3() {

    game3.debug.cameraInfo(game3.camera, 32, 32);
    game3.debug.spriteCoords(player, 32, 500);
}
