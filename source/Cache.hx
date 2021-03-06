package;

import flixel.FlxObject;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.util.FlxSave;

class Cache extends Hurtable
{
    var scoreboard:FlxSave;
    public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset)
    {
        super(X, Y, SimpleGraphic);
        /* REPLACE WITH ACTUAL GRPAHIC */
        loadGraphic("assets/images/Blob 2.png", false, 128, 128, false, null);
        setSize(128, 128);
        allowCollisions = FlxObject.ANY;
        immovable = true;
        health = 10;
    }

    override public function kill()
    {
        scoreboard = new FlxSave();
        scoreboard.bind("Save");
        scoreboard.data.score += 250;
        scoreboard.flush();
        trace("AWARD POINTS");
        super.kill();
    }

}