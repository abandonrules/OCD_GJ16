<!doctype html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Phaser Example Runner</title>
        <meta name="viewport" content="initial-scale=1 maximum-scale=1 user-scalable=0 minimal-ui" />
        <script src="_site/js/jquery-2.0.3.min.js" type="text/javascript"></script>
        <script src="_site/phaser/phaser.2.4.4.min.js" type="text/javascript"></script>
        <script src="_site/phaser/blob.js" type="text/javascript"></script>
        <script src="_site/phaser/canvas-to-blob.js" type="text/javascript"></script>
        <script src="_site/phaser/filesaver.js" type="text/javascript"></script>
        <script src="_site/phaser/embed.js" type="text/javascript"></script>
        <style>
            body {
                margin: 0px;
                padding: 0px;
                font-family: Arial;
                font-size: 14px;
                background-color: #000000;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <div id="phaser-example"></div>

        <script type="text/javascript">

        var IDE_HOOK = false;
        var VERSION = '2.4.4';

        
var game = new Phaser.Game(800, 600, Phaser.CANVAS, 'phaser-example', { preload: preload, create: create, update: update, render: render });

function preload() {

    game.load.image('background','assets/tests/debug-grid-1920x1920.png');
    game.load.image('player','assets/sprites/phaser-dude.png');

}

var player;
var cursors;

function create() {

    game.add.tileSprite(0, 0, 1920, 1920, 'background');

    game.world.setBounds(0, 0, 1920, 1920);

    game.physics.startSystem(Phaser.Physics.P2JS);

    player = game.add.sprite(game.world.centerX, game.world.centerY, 'player');

    game.physics.p2.enable(player);

    cursors = game.input.keyboard.createCursorKeys();

    game.camera.follow(player);

    //  The deadzone is a Rectangle that defines the limits at which the camera will start to scroll
    //  It does NOT keep the target sprite within the rectangle, all it does is control the boundary
    //  at which the camera will start to move. So when the sprite hits the edge, the camera scrolls
    //  (until it reaches an edge of the world)
    game.camera.deadzone = new Phaser.Rectangle(100, 100, 600, 400);

}

function update() {

    player.body.setZeroVelocity();

    if (cursors.up.isDown)
    {
        player.body.moveUp(300)
    }
    else if (cursors.down.isDown)
    {
        player.body.moveDown(300);
    }

    if (cursors.left.isDown)
    {
        player.body.velocity.x = -300;
    }
    else if (cursors.right.isDown)
    {
        player.body.moveRight(300);
    }

}

function render() {

    var zone = game.camera.deadzone;

    game.context.fillStyle = 'rgba(255,0,0,0.6)';
    game.context.fillRect(zone.x, zone.y, zone.width, zone.height);

    game.debug.cameraInfo(game.camera, 32, 32);
    game.debug.spriteCoords(player, 32, 500);

}
        
        </script>

    </body>
</html>