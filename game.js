/**
 * Generated from the Phaser Sandbox
 *
 * //phaser.io/sandbox/oCMvHAaL
 *
 * This source requires Phaser 2.6.2
 */

var game = new Phaser.Game(1120, 630, Phaser.AUTO, '', { preload: preload, create: create, update: update, render: render });

function preload() {

    game.load.image('house', 'house.png');
    game.load.image('computer', 'computer.png');
    game.load.image('door', 'door.png');
    game.load.spritesheet('player', 'player.png', 32, 48);

}


var computer;
var door;

function create() {

    game.physics.startSystem(Phaser.Physics.ARCADE);

    var map = game.add.tileSprite(0, 0, 1280, 780, 'house');  // For the maps
    game.world.setBounds(0, 0, 1280, 780);               // For the maps

    //map.scale.setTo(2, 2);


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
    var computer_icon = computer.create(130, 0, 'computer');
    computer_icon.body.immovable = true;


    computer = game.add.group();
    computer.enableBody = true;
    var computer_icon = computer.create(770, 0, 'computer');
    computer_icon.body.immovable = true;

    this.key = game.input.keyboard.addKey(Phaser.Keyboard.ENTER);

    game.camera.follow(player); //  For the maps
}


var test = false;

function update() {

    var intDoor = game.physics.arcade.collide(player, door);
    var intComputer = game.physics.arcade.collide(player, computer);


    var cursor = game.input.keyboard.createCursorKeys();

    player.body.velocity.x = 0;
    player.body.velocity.y = 0;

    if (cursor.left.isDown) {

        player.body.velocity.x = -150;
        player.animations.play('left');
    }

    else if (cursor.right.isDown) {

        player.body.velocity.x = 150;
        player.animations.play('right');
    }

    else if (cursor.down.isDown) {

      player.body.velocity.y = 150;
      player.animations.play('down');
    }

    else if (cursor.up.isDown) {

      player.body.velocity.y = -150;
      player.animations.play('up');
    }

    else {
        player.animations.stop();
    }

    if(intComputer && this.key.isDown)       // checks if player is touching target sprite AND has pressed ENTER
        print_computer();                    // somehow works if player is ON (above) the button, not is player is besides it.

    if(intDoor && this.key.isDown)
        next_level();

}

function print_computer() {      // This is basically to show that once we redirect to a function
                                 // after the sprite touching check, we can do anything using the function.
    game.add.text(game.world.width/4, game.world.height/2, "Hello, h4cK3r");
    //var chal = game.add.sprite(0, 0, 'background');   // Verified. It is working.
}

function next_level() {

    alert('Hiya!')
}

/*
function preload() {

    game.load.image('land', 'world1.png');
    game.load.image('building', 'building.png');
}
*/

function render() {
    game.debug.cameraInfo(game.camera, 32, 32); //  These commands are for
    game.debug.spriteCoords(player, 32, 500);   // debugging, not running the game.

}
