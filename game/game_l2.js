

var game2 = new Phaser.game2(1120, 630, Phaser.AUTO, '', { preload: preload_2, create: create_2, update: update_2, render: render_2 });

function preload_2() {

    game2.load.image('land', 'images/world1.png');
    game2.load.image('building', 'images/building.png');
    game2.load.spritesheet('player', 'images/player.png', 32, 48);
}

var building;

function create_2() {

    game2.physics.startSystem(Phaser.Physics.ARCADE);

    var map = game2.add.tileSprite(0, 0, 1280, 780, 'land');  // For the maps
    game2.world.setBounds(0, 0, 1280, 780);               // For the maps

    //map.scale.setTo(2, 2);


    player = game2.add.sprite(137, 73, 'player');
    game2.physics.arcade.enable(player);

    player.body.bounce.y = 0.1;
    player.body.gravity.y = 0;
    player.body.collideWorldBounds = true;

    player.animations.add('up', [12, 13, 14, 15], 10, true);
    player.animations.add('down', [0, 1, 2, 3], 10, true);
    player.animations.add('left', [4, 5, 6, 7], 10, true);
    player.animations.add('right', [8, 9, 10, 11], 10, true);

    building = game2.add.group();
    building.enableBody = true;

    var building_icon = building.create(game2.world.width - 96, 250, 'building');
    building_icon.body.immovable = true;

    this.key = game2.input.keyboard.addKey(Phaser.Keyboard.ENTER);

    game2.camera.follow(player); //  For the maps
}


function update_2() {

    var intBuilding = game2.physics.arcade.collide(building, player);

    var cursor = game2.input.keyboard.createCursorKeys();

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

    if(intBuilding && this.key.isDown)       // checks if player is touching target sprite AND has pressed ENTER
        print_building();                    // somehow works if player is ON (above) the button, not is player is besides it.
}

function print_building() {

  alert('Level 2!');
}


function render_2() {

    game2.debug.cameraInfo(game2.camera, 32, 32);
    game2.debug.spriteCoords(player, 32, 500);
}
