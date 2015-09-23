enchant();

window.onload = function() {
    var core = new Core(320, 320);
    core.preload('chara1.png');
    core.fps = 15;
    core.onload = function() {
        var bear = new Sprite(32, 32);
        bear.image = core.assets['chara1.png'];
        bear.x = 0;
        bear.y = 0;

        bear.addEventListener('enterframe', function(){
        })

        core.rootScene.addChild(this);
    };
    core.start();
};
