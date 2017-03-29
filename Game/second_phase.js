/**
 * Generated from the Phaser Sandbox
 *
 * //phaser.io/sandbox/oCMvHAaL
 *
 * This source requires Phaser 2.6.2
 */

var game = new Phaser.Game(600, 300, Phaser.AUTO, '', { preload: preload, create: create, update: update, render: render });

function preload() {
    
    game.load.baseURL = 'http://examples.phaser.io/assets/';
    game.load.crossOrigin = 'anonymous';
    
    game.load.image('background', 'games/gofish/background.png');
    game.load.image('star', 'games/starstruck/star.png');
    game.load.image('path', 'games/gofish/level1.png');
    game.load.image('button', '/buttons/revive-button.png');

}


var platforms;
var button;

function create() {
    
    game.physics.startSystem(Phaser.Physics.ARCADE);
    
    game.add.tileSprite(0, 0, 916, 416, 'background');  // For the maps
    game.world.setBounds(0, 0, 916, 416);               // For the maps
    
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
    
    button = game.add.group();
    button.enableBody = true;
    
    var game_button = button.create(game.world.width/2 - 100, (3*game.world.height/4) - 70, 'button');
    //this.game.button.body.enable = true;
    game_button.body.immovable = true;
    //game_button.body.overlapX = 0;
    

    this.key = game.input.keyboard.addKey(Phaser.Keyboard.ENTER);
    
    game.camera.follow(player); //  For the maps
    
    //player.animations.add('left', [0, 1, 2, 3], 10, true) ;
    //player.animations.add('right', [5, 6, 7, 8], 10, true);
}


var test = false;

function update() {
    
    var hitPlatform = game.physics.arcade.collide(player, platforms);
    var hitTarget = game.physics.arcade.collide(player, button);
    
    var cursor = game.input.keyboard.createCursorKeys();
    
    player.body.velocity.x = 0;
    //player.body.velocity.y = 0;
    
    if (cursor.left.isDown)
    {
        player.body.velocity.x = -150;
        /*game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });*/
    }
        
    if (cursor.right.isDown)
    {
        player.body.velocity.x = 150;
        /*game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });*/
    }
        
    if (cursor.up.isDown && player.body.touching.down && (hitPlatform || hitTarget))
    {
        player.body.velocity.y = -150;
        /*game.time.events.add(500, 
        function() {
            
            player.body.velocity.x = 0;
        });*/
    }
    
    
    
    //window.console.log(hitTarget);
    /*if(hitTarget && this.akey.isDown)
        print();
    
    
    window.console.log(test);
    if (hitTarget)
        test = true;
        
    else
        test = false;
    */
    window.console.log(hitTarget, this.key.isDown); // just a check
    if(hitTarget && this.key.isDown)                // checks if player is touching target sprite AND has pressed ENTER
        print();                                    // somehow works if player is ON (above) the button, not is player is besides it.
    
}

function print() {      // This is basically to show that once we redirect to a function
                        // after the sprite touching check, we can do anything using the function.
    game.add.text(game.world.width/4, game.world.height/2, "Hello, h4cK3r");
    //var chal = game.add.sprite(0, 0, 'background');   // Verified. It is working.
}


function render() {
    /*
    game.debug.cameraInfo(game.camera, 32, 32); //  These commands are for
    game.debug.spriteCoords(player, 32, 500);   // debugging, not running the game.
    */

}
