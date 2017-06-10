/**
 * Generated from the Phaser Sandbox
 *
 * //phaser.io/sandbox/iquPrEKg
 *
 * This source requires Phaser 2.6.2
 */

var game = new Phaser.Game(800, 600, Phaser.AUTO, '', { preload: preload, create: create, update: update, render: render });

function preload() {

    game.load.baseURL = 'http://examples.phaser.io/assets/';
    game.load.crossOrigin = 'anonymous';

    game.load.image('road', 'sprites/advanced_wars_land.png');
    game.load.image('arrow', 'sprites/arrow.png');
    game.load.image('tree', 'particlestorm/sprites/tree.png');
    game.load.image('player', 'sprites/phaser-dude.png');
    game.load.image('gate', 'phaser3/stars-icon.png');

    game.load.spritesheet('button', 'buttons/button_sprite_sheet.png', 193, 71);
    game.load.image('background', 'pics/bubble-on.png');
    game.load.image('close', 'sprites/orb-red.png');

}

var road;
var arrow;
var tree;

var player;

var gate;

var button;
var popup;
var tween = null;
var tween1 = null;

var Flag;
var cursors;

function create() {

    game.add.sprite(200, 50, 'road');
    game.add.sprite(400, 50, 'road');
    game.add.sprite(600, 50, 'road');
    game.add.sprite(200,100, 'tree');
    game.add.sprite(200,200, 'tree');
    game.add.sprite(200,400, 'tree');
    game.add.sprite(0,100, 'tree');
    game.add.sprite(0,200, 'tree');
    game.add.sprite(0,300, 'tree');
    game.add.sprite(0,400, 'tree');
    game.add.sprite(220, 360, 'road');
    game.add.sprite(100,350, 'arrow');
    game.add.sprite(100,50, 'arrow');
    gate= game.add.sprite(495, 550, 'gate');
    road= game.add.sprite(550, 81, 'road');
    road.angle+=90;
    road1= game.add.sprite(550, 200, 'road');
    road1.angle+=90;

    player= game.add.sprite(0,0, 'player');
    game.physics.arcade.enable(player);
    player.body.collideWorldBounds = true;

    cursors = game.input.keyboard.createCursorKeys();

    button = game.add.button(game.world.centerX - 95, 550, 'button', openWindow, this, 2,1,0);
    button.height=50;
    button.length=50;
    button.input.useHandCursor = true;

    //  the pop-up window
    popup = game.add.sprite(game.world.centerX, game.world.centerY, 'background');
    popup.alpha = 1;
    popup.anchor.set(0.5);
    popup.inputEnabled = true;


    //  Position the close button to the top-right of the popup sprite (minus 8px for spacing)
    var pw = (popup.width / 2) - 30;
    var ph = (popup.height / 2) - 8;

    //  And click the close button to close it down again
    var closeButton = game.make.sprite(pw, -ph, 'close');
    closeButton.inputEnabled = true;
    closeButton.input.priorityID = 1;
    closeButton.input.useHandCursor = true;
    closeButton.events.onInputDown.add(closeWindow, this);

    //  Add the "close button" to the popup window image
    popup.addChild(closeButton);


    //  Hide it awaiting a click
    popup.scale.set(0);

    game.add.plugin(PhaserInput.Plugin);
    Flag = game.add.inputField(350, 400, {
    font: '18px Arial',
    fill: '#212121',
    fontWeight: 'bold',
    width: 150,
    padding: 8,
    borderWidth: 1,
    borderColor: '#000',
    borderRadius: 6,
    placeHolder: 'Flag',
    type: PhaserInput.InputType.text
    });
    Flag.inputEnabled = true;
    Flag.scale.set(0);
    PhaserInput.onKeyboardClose.addOnce(function() {
    this.resizeBackgroundImage();
    //Flag.scale.set(0);
    });
}
function openWindow() {
    //var Flag;
    if ((tween !== null && tween.isRunning) || popup.scale.x === 1)
    {
        return;
    }
    else {
    //  Create a tween that will pop-open the window, but only if it's not already tweening or open
    tween = game.add.tween(popup.scale).to( { x: 1, y: 1 }, 1000, Phaser.Easing.Elastic.Out, true);
    tween = game.add.tween(Flag.scale).to( { x: 1, y: 1 }, 1000, Phaser.Easing.Elastic.Out, true);

    }


}

function closeWindow() {

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



function update () {

    player.body.velocity.x = 0;
    player.body.velocity.y = 0;

    if (cursors.left.isDown)
    {
        player.body.velocity.x = -400;
    }
    else if (cursors.right.isDown)
    {
        player.body.velocity.x = 400;
    }

    else if (cursors.up.isDown)
    {
        player.body.velocity.y = -200;
    }
    else if(cursors.down.isDown)
    {
        player.body.velocity.y = 200;
    }

}



function render () {

}
