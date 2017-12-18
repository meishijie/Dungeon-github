#if !macro


@:access(lime.app.Application)
@:access(lime.Assets)
@:access(openfl.display.Stage)


class ApplicationMain {
	
	
	public static var config:lime.app.Config;
	public static var preloader:openfl.display.Preloader;
	
	
	public static function create ():Void {
		
		var app = new openfl.display.Application ();
		app.create (config);
		
		var display = new flixel.system.FlxPreloader ();
		
		preloader = new openfl.display.Preloader (display);
		app.setPreloader (preloader);
		preloader.onComplete.add (init);
		preloader.create (config);
		
		#if (js && html5)
		var urls = [];
		var types = [];
		
		
		urls.push ("assets/data/achievement.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/achievement.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/deathtype.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/hint.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/message.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/nameentry.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/staffroll.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/statistics.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/stats.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/title.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/ansi/uitext.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/deathtype.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/hint.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/message.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/name/female.cpp");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/name/male.cpp");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/nameentry.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/staffroll.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/statistics.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/stats.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/title.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/uitext.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/achievement.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/deathtype.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/hint.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/message.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/nameentry.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/staffroll.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/statistics.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/stats.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/title.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/data/utf8/uitext.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/001.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/002.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/003.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/010.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/cursor.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/ending.cpp");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/ending.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/matatabi.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/message.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/opening.cpp");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/events/tileset1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset10.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset4.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset5.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset6.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset7.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset8.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/tileset9.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/events/window.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("FZXS14");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("assets/font/font16x16.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("PixelMplus10 Regular");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("assets/images/balloon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/cat.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/cursor.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/door.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/effect.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/heart.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/item.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/kira.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/arachne.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/bat.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/bear.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/bee.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/beetle.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/bird.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/boar.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/bull.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/cat1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/cat2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/centipede.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/chicken.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/cockroach.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/cow.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/crab_ground.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/crab_water.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/crystal_golem.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dark_elf1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dark_elf2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dark_elf3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dark_elf4.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/doe.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dog1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dog2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/dummy.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/earth_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/eel_ground.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/eel_water.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/empusa.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/evil_eye.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/fairy.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/fire_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/floating_skull.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/fly.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/frog.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/fungus.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gargoyle_fly.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gargoyle_walk.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gas_spore.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gelatinous_cube.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ghost.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ghoul.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gillman_ground.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gillman_water.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gnole1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gnole2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goat.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goatman1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goatman2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goblin1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goblin2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goblin3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/goblin4.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/golem.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/gorilla.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/grizzy_bear.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/hairy_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/harpy_fly.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/harpy_walk.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/homunculus.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/horse1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/horse2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/horse3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/horse4.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ice_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/imp.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/insectivorous_plant.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/insect_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/invader.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/iron_golem.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/jelly.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/jellyfish.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/legion.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/lesser_fiend1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/lesser_fiend2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/liche.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/lizard.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/lizardman1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/lizardman2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/magot.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/mandragora.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/mantis.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/medousa.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/mindflayer.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/minotaur1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/minotaur2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/mosquito.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/mummy.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/myconid.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/nightmare.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/octopus_ground.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/octopus_water.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ogre1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ogre2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/orc1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/orc2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/panther.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/pig.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/pillbug.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/poison_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/polar_bear.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/pumpkin_head.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/rat.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ratman1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/ratman2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/reaper.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/saber_tiger.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/scorpion.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/sea_serpent.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/shadow_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/sheep.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/shellfish.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/shrieker.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/skeleton1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/skeleton2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/skeleton3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/skeleton_dog.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/skeleton_horse.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/slime.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/slug.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/snail.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/snake.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/snake_man.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/snow_panther.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/snow_wolf.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/soldier_ant.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/specter.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/spider.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/stag.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/succubus.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/tentacle.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/tick.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/tiger.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/toad.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/vampire.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/vine.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/vulture_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/water_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/werewolf.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/wight.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/wind_demon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/wolf.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/worker_ant.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/worm.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/wraith.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/wyvern.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/yeti.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/monster/zombie.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/a.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/b.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/background.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/down.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/left.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/right.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/pad/up.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/player.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/result/girl.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/result/girl2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/result/girl3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/result/kira.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/smoke.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/spike.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/tiles.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/bg.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/cloud1.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/cloud2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/cloud3.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/cloud4.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/title/sunbeam.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/arrow.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/armor.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/food.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/orb.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/potion.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/ring.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/scroll.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/wand.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/category/weapon.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/enemylog_cursor.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/frame32x256.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/itemcommand.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/itemlog_cursor.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/listitem.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/listitem2.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/message.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/messagetext.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/window200x100.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/images/ui/window624x74.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/levels/000.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/001.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/002.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/003.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/004.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/005.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/006.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/007.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/008.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/009.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/010.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/011.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/012.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/013.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/014.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/015.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/016.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/017.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/018.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/019.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/020.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/021.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/022.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/023.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/024.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/025.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/026.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/027.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/028.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/029.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/030.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/031.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/032.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/033.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/034.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/035.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/036.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/037.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/038.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/039.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/040.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/041.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/042.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/043.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/044.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/045.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/046.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/047.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/048.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/049.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/050.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/500.tmx");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/enemy.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/enemy_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/enemy_nightmare.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/item_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/item_consumable.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/item_equipment.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/ansi/player.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/enemy.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/enemy_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/enemy_nightmare.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/item_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/item_consumable.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/item_equipment.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/player.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/tilenone.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/levels/tileset.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("assets/levels/utf8/enemy.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/enemy_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/enemy_nightmare.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/item_appear.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/item_consumable.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/item_equipment.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/levels/utf8/player.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/TemplateCSV/item_consumable.csv");
		types.push (lime.Assets.AssetType.TEXT);
		
		
		urls.push ("assets/music/001.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/002.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/003.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/004.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/005.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/006.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/007.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/008.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/009.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/010.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/011.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/012.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/013.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/014.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/015.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/016.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/nightmare.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/result.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/op1.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/music/op2.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/pickup2.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/foot2.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/destroy.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/hit.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/hit4.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/eat.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/enemy.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/equip.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/put.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/avoid2.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/recover.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/destroy2.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/menu.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/pi.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/hint.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/coin.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/levelup.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/badstatus.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/warp.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/error.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/flash.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/break.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/roar.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/powerup.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/chime.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("assets/sounds/unlock.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("flixel/sounds/beep.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("flixel/sounds/flixel.ogg");
		types.push (lime.Assets.AssetType.SOUND);
		
		
		urls.push ("Nokia Cellphone FC Small");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("Monsterrat");
		types.push (lime.Assets.AssetType.FONT);
		
		
		urls.push ("flixel/images/ui/button.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		urls.push ("flixel/images/logo/default.png");
		types.push (lime.Assets.AssetType.IMAGE);
		
		
		
		if (config.assetsPrefix != null) {
			
			for (i in 0...urls.length) {
				
				if (types[i] != lime.Assets.AssetType.FONT) {
					
					urls[i] = config.assetsPrefix + urls[i];
					
				}
				
			}
			
		}
		
		preloader.load (urls, types);
		#end
		
		var result = app.exec ();
		
		#if (sys && !nodejs && !emscripten)
		Sys.exit (result);
		#end
		
	}
	
	
	public static function init ():Void {
		
		var loaded = 0;
		var total = 0;
		var library_onLoad = function (__) {
			
			loaded++;
			
			if (loaded == total) {
				
				start ();
				
			}
			
		}
		
		preloader = null;
		
		
		
		
		if (total == 0) {
			
			start ();
			
		}
		
	}
	
	
	public static function main () {
		
		config = {
			
			build: "100",
			company: "HaxeFlixel",
			file: "RogueLike",
			fps: 60,
			name: "FlixelRL",
			orientation: "portrait",
			packageName: "com.example.myapp",
			version: "1.0.1",
			windows: [
				
				{
					antialiasing: null,
					background: 0,
					borderless: false,
					depthBuffer: false,
					display: 0,
					fullscreen: false,
					hardware: false,
					height: 480,
					parameters: "{}",
					resizable: true,
					stencilBuffer: true,
					title: "FlixelRL",
					vsync: true,
					width: 852,
					x: null,
					y: null
				},
			]
			
		};
		
		#if hxtelemetry
		var telemetry = new hxtelemetry.HxTelemetry.Config ();
		telemetry.allocations = true;
		telemetry.host = "localhost";
		telemetry.app_name = config.name;
		Reflect.setField (config, "telemetry", telemetry);
		#end
		
		#if (js && html5)
		#if (munit || utest)
		openfl.Lib.embed (null, 852, 480, "000000");
		#end
		#else
		create ();
		#end
		
	}
	
	
	public static function start ():Void {
		
		var hasMain = false;
		var entryPoint = Type.resolveClass ("Main");
		
		for (methodName in Type.getClassFields (entryPoint)) {
			
			if (methodName == "main") {
				
				hasMain = true;
				break;
				
			}
			
		}
		
		lime.Assets.initialize ();
		
		if (hasMain) {
			
			Reflect.callMethod (entryPoint, Reflect.field (entryPoint, "main"), []);
			
		} else {
			
			var instance:DocumentClass = Type.createInstance (DocumentClass, []);
			
			/*if (Std.is (instance, openfl.display.DisplayObject)) {
				
				openfl.Lib.current.addChild (cast instance);
				
			}*/
			
		}
		
		#if !flash
		if (openfl.Lib.current.stage.window.fullscreen) {
			
			openfl.Lib.current.stage.dispatchEvent (new openfl.events.FullScreenEvent (openfl.events.FullScreenEvent.FULL_SCREEN, false, false, true, true));
			
		}
		
		openfl.Lib.current.stage.dispatchEvent (new openfl.events.Event (openfl.events.Event.RESIZE, false, false));
		#end
		
	}
	
	
	#if neko
	@:noCompletion @:dox(hide) public static function __init__ () {
		
		var loader = new neko.vm.Loader (untyped $loader);
		loader.addPath (haxe.io.Path.directory (Sys.executablePath ()));
		loader.addPath ("./");
		loader.addPath ("@executable_path/");
		
	}
	#end
	
	
}


@:build(DocumentClass.build())
@:keep class DocumentClass extends Main {}


#else


import haxe.macro.Context;
import haxe.macro.Expr;


class DocumentClass {
	
	
	macro public static function build ():Array<Field> {
		
		var classType = Context.getLocalClass ().get ();
		var searchTypes = classType;
		
		while (searchTypes.superClass != null) {
			
			if (searchTypes.pack.length == 2 && searchTypes.pack[1] == "display" && searchTypes.name == "DisplayObject") {
				
				var fields = Context.getBuildFields ();
				
				var method = macro {
					
					openfl.Lib.current.addChild (this);
					super ();
					dispatchEvent (new openfl.events.Event (openfl.events.Event.ADDED_TO_STAGE, false, false));
					
				}
				
				fields.push ({ name: "new", access: [ APublic ], kind: FFun({ args: [], expr: method, params: [], ret: macro :Void }), pos: Context.currentPos () });
				
				return fields;
				
			}
			
			searchTypes = searchTypes.superClass.t.get ();
			
		}
		
		return null;
		
	}
	
	
}


#end
