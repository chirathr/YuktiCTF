/**
 * Generated from the Phaser Sandbox
 *
 * //phaser.io/sandbox/bXiyegEq
 *
 * This source requires Phaser 2.6.2
 */

var game = new Phaser.Game(916, 416, Phaser.AUTO, '', { preload: preload, create: create, update: update, render: render });

function preload() {
    
    game.load.baseURL = 'http://examples.phaser.io/assets/';
    game.load.crossOrigin = 'anonymous';
    
    game.load.image('background', 'games/gofish/background.png');
    game.load.image('star', 'games/starstruck/star.png');
    game.load.image('path', 'games/gofish/level1.png');
    game.load.image('button', '/buttons/revive-button.png');

}

var platforms;
var imp;

function create() {
    
    game.physics.startSystem(Phaser.Physics.ARCADE);
    
    game.add.sprite(0, 0, 'background');
    
    platforms = game.add.group();
    platforms.enableBody = true;
    
    var ground = platforms.create(0, game.world.height - 64, 'path');
    //ground.scale.setTo(2, 2);
    
    ground.body.immovable = true;
    
    var ledge = platforms.create(game.world.width - 360, 200, 'path');
    ledge.body.immovable = true;
    
    ledge = platforms.create(game.world.width - 360, game.world.height - 13, 'path');
    ledge.body.immovable = true;
    
    ledge = platforms.create(game.world.width - 720, game.world.height - 13, 'path');
    ledge.body.immovable = true;
    
    ledge = platforms.create(game.world.width - 1080, game.world.height - 13, 'path');
    ledge.body.immovable = true;
    
    ledge = platforms.create(game.world.width/4, 3*game.world.height/4, 'path');
    ledge.body.immovable = true;
    
    
    player = game.add.sprite(100, game.world.height - 13 - 64, 'star');
    game.physics.arcade.enable(player);
    
    player.body.bounce.y = 0.1;
    player.body.gravity.y = 100;
    player.body.collideWorldBounds = true;
    
    imp = game.add.group();
    imp.enableBody = true;
    
    var game_button = imp.create(game.world.width/2 - 100, (3*game.world.height/4) - 70, 'button');
    game_button.body.immovable = true;

    
    //player.animations.add('left', [0, 1, 2, 3], 10, true) ;
    //player.animations.add('right', [5, 6, 7, 8], 10, true);
}

function print() {
    
    game.add.text(game.world.width/4, game.world.height/2, "Hello, h4cK3r");
}

function update() {
    
    var hitPlatform = game.physics.arcade.collide(player, platforms);
    
    var cursor = game.input.keyboard.createCursorKeys();
    
    if (cursor.left.isDown)
    {
        player.body.velocity.x = -150;
        game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });
    }
        
    if (cursor.right.isDown)
    {
        player.body.velocity.x = 150;
        game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });
    }
        
    if (cursor.up.isDown && player.body.touching.down && hitPlatform)
    {
        player.body.velocity.y = -150;
        game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });
    }
    
    var hitTarget = game.physics.arcade.collide(player, imp);
    
    //var target = 
    
    if(hitTarget)
        print();
    
}

function print() {
    
    game.add.text(game.world.width/4, game.world.height/2, "Hello, h4cK3r");
}

function render() {

}
