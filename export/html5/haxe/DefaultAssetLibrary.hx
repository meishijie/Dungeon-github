package;


import haxe.Timer;
import haxe.Unserializer;
import lime.app.Future;
import lime.app.Preloader;
import lime.app.Promise;
import lime.audio.AudioSource;
import lime.audio.openal.AL;
import lime.audio.AudioBuffer;
import lime.graphics.Image;
import lime.net.HTTPRequest;
import lime.system.CFFI;
import lime.text.Font;
import lime.utils.Bytes;
import lime.utils.UInt8Array;
import lime.Assets;

#if sys
import sys.FileSystem;
#end

#if flash
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.Loader;
import flash.events.Event;
import flash.events.IOErrorEvent;
import flash.events.ProgressEvent;
import flash.media.Sound;
import flash.net.URLLoader;
import flash.net.URLRequest;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public var className (default, null) = new Map <String, Dynamic> ();
	public var path (default, null) = new Map <String, String> ();
	public var type (default, null) = new Map <String, AssetType> ();
	
	private var lastModified:Float;
	private var timer:Timer;
	
	
	public function new () {
		
		super ();
		
		#if (openfl && !flash)
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_font_fangzhengxiangsu14_ttf);
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_font_pixel_ttf);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		
		
		#end
		
		#if flash
		
		className.set ("assets/data/achievement.csv", __ASSET__assets_data_achievement_csv);
		type.set ("assets/data/achievement.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/achievement.csv", __ASSET__assets_data_ansi_achievement_csv);
		type.set ("assets/data/ansi/achievement.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/deathtype.csv", __ASSET__assets_data_ansi_deathtype_csv);
		type.set ("assets/data/ansi/deathtype.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/hint.csv", __ASSET__assets_data_ansi_hint_csv);
		type.set ("assets/data/ansi/hint.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/message.csv", __ASSET__assets_data_ansi_message_csv);
		type.set ("assets/data/ansi/message.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/nameentry.csv", __ASSET__assets_data_ansi_nameentry_csv);
		type.set ("assets/data/ansi/nameentry.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/staffroll.csv", __ASSET__assets_data_ansi_staffroll_csv);
		type.set ("assets/data/ansi/staffroll.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/statistics.csv", __ASSET__assets_data_ansi_statistics_csv);
		type.set ("assets/data/ansi/statistics.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/stats.csv", __ASSET__assets_data_ansi_stats_csv);
		type.set ("assets/data/ansi/stats.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/title.csv", __ASSET__assets_data_ansi_title_csv);
		type.set ("assets/data/ansi/title.csv", AssetType.TEXT);
		className.set ("assets/data/ansi/uitext.csv", __ASSET__assets_data_ansi_uitext_csv);
		type.set ("assets/data/ansi/uitext.csv", AssetType.TEXT);
		className.set ("assets/data/deathtype.csv", __ASSET__assets_data_deathtype_csv);
		type.set ("assets/data/deathtype.csv", AssetType.TEXT);
		className.set ("assets/data/hint.csv", __ASSET__assets_data_hint_csv);
		type.set ("assets/data/hint.csv", AssetType.TEXT);
		className.set ("assets/data/message.csv", __ASSET__assets_data_message_csv);
		type.set ("assets/data/message.csv", AssetType.TEXT);
		className.set ("assets/data/name/female.cpp", __ASSET__assets_data_name_female_cpp);
		type.set ("assets/data/name/female.cpp", AssetType.TEXT);
		className.set ("assets/data/name/male.cpp", __ASSET__assets_data_name_male_cpp);
		type.set ("assets/data/name/male.cpp", AssetType.TEXT);
		className.set ("assets/data/nameentry.csv", __ASSET__assets_data_nameentry_csv);
		type.set ("assets/data/nameentry.csv", AssetType.TEXT);
		className.set ("assets/data/staffroll.csv", __ASSET__assets_data_staffroll_csv);
		type.set ("assets/data/staffroll.csv", AssetType.TEXT);
		className.set ("assets/data/statistics.csv", __ASSET__assets_data_statistics_csv);
		type.set ("assets/data/statistics.csv", AssetType.TEXT);
		className.set ("assets/data/stats.csv", __ASSET__assets_data_stats_csv);
		type.set ("assets/data/stats.csv", AssetType.TEXT);
		className.set ("assets/data/title.csv", __ASSET__assets_data_title_csv);
		type.set ("assets/data/title.csv", AssetType.TEXT);
		className.set ("assets/data/uitext.csv", __ASSET__assets_data_uitext_csv);
		type.set ("assets/data/uitext.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/achievement.csv", __ASSET__assets_data_utf8_achievement_csv);
		type.set ("assets/data/utf8/achievement.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/deathtype.csv", __ASSET__assets_data_utf8_deathtype_csv);
		type.set ("assets/data/utf8/deathtype.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/hint.csv", __ASSET__assets_data_utf8_hint_csv);
		type.set ("assets/data/utf8/hint.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/message.csv", __ASSET__assets_data_utf8_message_csv);
		type.set ("assets/data/utf8/message.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/nameentry.csv", __ASSET__assets_data_utf8_nameentry_csv);
		type.set ("assets/data/utf8/nameentry.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/staffroll.csv", __ASSET__assets_data_utf8_staffroll_csv);
		type.set ("assets/data/utf8/staffroll.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/statistics.csv", __ASSET__assets_data_utf8_statistics_csv);
		type.set ("assets/data/utf8/statistics.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/stats.csv", __ASSET__assets_data_utf8_stats_csv);
		type.set ("assets/data/utf8/stats.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/title.csv", __ASSET__assets_data_utf8_title_csv);
		type.set ("assets/data/utf8/title.csv", AssetType.TEXT);
		className.set ("assets/data/utf8/uitext.csv", __ASSET__assets_data_utf8_uitext_csv);
		type.set ("assets/data/utf8/uitext.csv", AssetType.TEXT);
		className.set ("assets/events/001.tmx", __ASSET__assets_events_001_tmx);
		type.set ("assets/events/001.tmx", AssetType.TEXT);
		className.set ("assets/events/002.tmx", __ASSET__assets_events_002_tmx);
		type.set ("assets/events/002.tmx", AssetType.TEXT);
		className.set ("assets/events/003.tmx", __ASSET__assets_events_003_tmx);
		type.set ("assets/events/003.tmx", AssetType.TEXT);
		className.set ("assets/events/010.tmx", __ASSET__assets_events_010_tmx);
		type.set ("assets/events/010.tmx", AssetType.TEXT);
		className.set ("assets/events/cursor.png", __ASSET__assets_events_cursor_png);
		type.set ("assets/events/cursor.png", AssetType.IMAGE);
		className.set ("assets/events/ending.cpp", __ASSET__assets_events_ending_cpp);
		type.set ("assets/events/ending.cpp", AssetType.TEXT);
		className.set ("assets/events/ending.png", __ASSET__assets_events_ending_png);
		type.set ("assets/events/ending.png", AssetType.IMAGE);
		className.set ("assets/events/matatabi.png", __ASSET__assets_events_matatabi_png);
		type.set ("assets/events/matatabi.png", AssetType.IMAGE);
		className.set ("assets/events/message.csv", __ASSET__assets_events_message_csv);
		type.set ("assets/events/message.csv", AssetType.TEXT);
		className.set ("assets/events/opening.cpp", __ASSET__assets_events_opening_cpp);
		type.set ("assets/events/opening.cpp", AssetType.TEXT);
		className.set ("assets/events/tileset1.png", __ASSET__assets_events_tileset1_png);
		type.set ("assets/events/tileset1.png", AssetType.IMAGE);
		className.set ("assets/events/tileset10.png", __ASSET__assets_events_tileset10_png);
		type.set ("assets/events/tileset10.png", AssetType.IMAGE);
		className.set ("assets/events/tileset2.png", __ASSET__assets_events_tileset2_png);
		type.set ("assets/events/tileset2.png", AssetType.IMAGE);
		className.set ("assets/events/tileset3.png", __ASSET__assets_events_tileset3_png);
		type.set ("assets/events/tileset3.png", AssetType.IMAGE);
		className.set ("assets/events/tileset4.png", __ASSET__assets_events_tileset4_png);
		type.set ("assets/events/tileset4.png", AssetType.IMAGE);
		className.set ("assets/events/tileset5.png", __ASSET__assets_events_tileset5_png);
		type.set ("assets/events/tileset5.png", AssetType.IMAGE);
		className.set ("assets/events/tileset6.png", __ASSET__assets_events_tileset6_png);
		type.set ("assets/events/tileset6.png", AssetType.IMAGE);
		className.set ("assets/events/tileset7.png", __ASSET__assets_events_tileset7_png);
		type.set ("assets/events/tileset7.png", AssetType.IMAGE);
		className.set ("assets/events/tileset8.png", __ASSET__assets_events_tileset8_png);
		type.set ("assets/events/tileset8.png", AssetType.IMAGE);
		className.set ("assets/events/tileset9.png", __ASSET__assets_events_tileset9_png);
		type.set ("assets/events/tileset9.png", AssetType.IMAGE);
		className.set ("assets/events/window.png", __ASSET__assets_events_window_png);
		type.set ("assets/events/window.png", AssetType.IMAGE);
		className.set ("assets/font/fangzhengxiangsu14.ttf", __ASSET__assets_font_fangzhengxiangsu14_ttf);
		type.set ("assets/font/fangzhengxiangsu14.ttf", AssetType.FONT);
		className.set ("assets/font/font16x16.png", __ASSET__assets_font_font16x16_png);
		type.set ("assets/font/font16x16.png", AssetType.IMAGE);
		className.set ("assets/font/pixel.ttf", __ASSET__assets_font_pixel_ttf);
		type.set ("assets/font/pixel.ttf", AssetType.FONT);
		className.set ("assets/images/balloon.png", __ASSET__assets_images_balloon_png);
		type.set ("assets/images/balloon.png", AssetType.IMAGE);
		className.set ("assets/images/cat.png", __ASSET__assets_images_cat_png);
		type.set ("assets/images/cat.png", AssetType.IMAGE);
		className.set ("assets/images/cursor.png", __ASSET__assets_images_cursor_png);
		type.set ("assets/images/cursor.png", AssetType.IMAGE);
		className.set ("assets/images/door.png", __ASSET__assets_images_door_png);
		type.set ("assets/images/door.png", AssetType.IMAGE);
		className.set ("assets/images/effect.png", __ASSET__assets_images_effect_png);
		type.set ("assets/images/effect.png", AssetType.IMAGE);
		className.set ("assets/images/heart.png", __ASSET__assets_images_heart_png);
		type.set ("assets/images/heart.png", AssetType.IMAGE);
		className.set ("assets/images/item.png", __ASSET__assets_images_item_png);
		type.set ("assets/images/item.png", AssetType.IMAGE);
		className.set ("assets/images/kira.png", __ASSET__assets_images_kira_png);
		type.set ("assets/images/kira.png", AssetType.IMAGE);
		className.set ("assets/images/monster/arachne.png", __ASSET__assets_images_monster_arachne_png);
		type.set ("assets/images/monster/arachne.png", AssetType.IMAGE);
		className.set ("assets/images/monster/bat.png", __ASSET__assets_images_monster_bat_png);
		type.set ("assets/images/monster/bat.png", AssetType.IMAGE);
		className.set ("assets/images/monster/bear.png", __ASSET__assets_images_monster_bear_png);
		type.set ("assets/images/monster/bear.png", AssetType.IMAGE);
		className.set ("assets/images/monster/bee.png", __ASSET__assets_images_monster_bee_png);
		type.set ("assets/images/monster/bee.png", AssetType.IMAGE);
		className.set ("assets/images/monster/beetle.png", __ASSET__assets_images_monster_beetle_png);
		type.set ("assets/images/monster/beetle.png", AssetType.IMAGE);
		className.set ("assets/images/monster/bird.png", __ASSET__assets_images_monster_bird_png);
		type.set ("assets/images/monster/bird.png", AssetType.IMAGE);
		className.set ("assets/images/monster/boar.png", __ASSET__assets_images_monster_boar_png);
		type.set ("assets/images/monster/boar.png", AssetType.IMAGE);
		className.set ("assets/images/monster/bull.png", __ASSET__assets_images_monster_bull_png);
		type.set ("assets/images/monster/bull.png", AssetType.IMAGE);
		className.set ("assets/images/monster/cat1.png", __ASSET__assets_images_monster_cat1_png);
		type.set ("assets/images/monster/cat1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/cat2.png", __ASSET__assets_images_monster_cat2_png);
		type.set ("assets/images/monster/cat2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/centipede.png", __ASSET__assets_images_monster_centipede_png);
		type.set ("assets/images/monster/centipede.png", AssetType.IMAGE);
		className.set ("assets/images/monster/chicken.png", __ASSET__assets_images_monster_chicken_png);
		type.set ("assets/images/monster/chicken.png", AssetType.IMAGE);
		className.set ("assets/images/monster/cockroach.png", __ASSET__assets_images_monster_cockroach_png);
		type.set ("assets/images/monster/cockroach.png", AssetType.IMAGE);
		className.set ("assets/images/monster/cow.png", __ASSET__assets_images_monster_cow_png);
		type.set ("assets/images/monster/cow.png", AssetType.IMAGE);
		className.set ("assets/images/monster/crab_ground.png", __ASSET__assets_images_monster_crab_ground_png);
		type.set ("assets/images/monster/crab_ground.png", AssetType.IMAGE);
		className.set ("assets/images/monster/crab_water.png", __ASSET__assets_images_monster_crab_water_png);
		type.set ("assets/images/monster/crab_water.png", AssetType.IMAGE);
		className.set ("assets/images/monster/crystal_golem.png", __ASSET__assets_images_monster_crystal_golem_png);
		type.set ("assets/images/monster/crystal_golem.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dark_elf1.png", __ASSET__assets_images_monster_dark_elf1_png);
		type.set ("assets/images/monster/dark_elf1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dark_elf2.png", __ASSET__assets_images_monster_dark_elf2_png);
		type.set ("assets/images/monster/dark_elf2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dark_elf3.png", __ASSET__assets_images_monster_dark_elf3_png);
		type.set ("assets/images/monster/dark_elf3.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dark_elf4.png", __ASSET__assets_images_monster_dark_elf4_png);
		type.set ("assets/images/monster/dark_elf4.png", AssetType.IMAGE);
		className.set ("assets/images/monster/doe.png", __ASSET__assets_images_monster_doe_png);
		type.set ("assets/images/monster/doe.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dog1.png", __ASSET__assets_images_monster_dog1_png);
		type.set ("assets/images/monster/dog1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dog2.png", __ASSET__assets_images_monster_dog2_png);
		type.set ("assets/images/monster/dog2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/dummy.png", __ASSET__assets_images_monster_dummy_png);
		type.set ("assets/images/monster/dummy.png", AssetType.IMAGE);
		className.set ("assets/images/monster/earth_demon.png", __ASSET__assets_images_monster_earth_demon_png);
		type.set ("assets/images/monster/earth_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/eel_ground.png", __ASSET__assets_images_monster_eel_ground_png);
		type.set ("assets/images/monster/eel_ground.png", AssetType.IMAGE);
		className.set ("assets/images/monster/eel_water.png", __ASSET__assets_images_monster_eel_water_png);
		type.set ("assets/images/monster/eel_water.png", AssetType.IMAGE);
		className.set ("assets/images/monster/empusa.png", __ASSET__assets_images_monster_empusa_png);
		type.set ("assets/images/monster/empusa.png", AssetType.IMAGE);
		className.set ("assets/images/monster/evil_eye.png", __ASSET__assets_images_monster_evil_eye_png);
		type.set ("assets/images/monster/evil_eye.png", AssetType.IMAGE);
		className.set ("assets/images/monster/fairy.png", __ASSET__assets_images_monster_fairy_png);
		type.set ("assets/images/monster/fairy.png", AssetType.IMAGE);
		className.set ("assets/images/monster/fire_demon.png", __ASSET__assets_images_monster_fire_demon_png);
		type.set ("assets/images/monster/fire_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/floating_skull.png", __ASSET__assets_images_monster_floating_skull_png);
		type.set ("assets/images/monster/floating_skull.png", AssetType.IMAGE);
		className.set ("assets/images/monster/fly.png", __ASSET__assets_images_monster_fly_png);
		type.set ("assets/images/monster/fly.png", AssetType.IMAGE);
		className.set ("assets/images/monster/frog.png", __ASSET__assets_images_monster_frog_png);
		type.set ("assets/images/monster/frog.png", AssetType.IMAGE);
		className.set ("assets/images/monster/fungus.png", __ASSET__assets_images_monster_fungus_png);
		type.set ("assets/images/monster/fungus.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gargoyle_fly.png", __ASSET__assets_images_monster_gargoyle_fly_png);
		type.set ("assets/images/monster/gargoyle_fly.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gargoyle_walk.png", __ASSET__assets_images_monster_gargoyle_walk_png);
		type.set ("assets/images/monster/gargoyle_walk.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gas_spore.png", __ASSET__assets_images_monster_gas_spore_png);
		type.set ("assets/images/monster/gas_spore.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gelatinous_cube.png", __ASSET__assets_images_monster_gelatinous_cube_png);
		type.set ("assets/images/monster/gelatinous_cube.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ghost.png", __ASSET__assets_images_monster_ghost_png);
		type.set ("assets/images/monster/ghost.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ghoul.png", __ASSET__assets_images_monster_ghoul_png);
		type.set ("assets/images/monster/ghoul.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gillman_ground.png", __ASSET__assets_images_monster_gillman_ground_png);
		type.set ("assets/images/monster/gillman_ground.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gillman_water.png", __ASSET__assets_images_monster_gillman_water_png);
		type.set ("assets/images/monster/gillman_water.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gnole1.png", __ASSET__assets_images_monster_gnole1_png);
		type.set ("assets/images/monster/gnole1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gnole2.png", __ASSET__assets_images_monster_gnole2_png);
		type.set ("assets/images/monster/gnole2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goat.png", __ASSET__assets_images_monster_goat_png);
		type.set ("assets/images/monster/goat.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goatman1.png", __ASSET__assets_images_monster_goatman1_png);
		type.set ("assets/images/monster/goatman1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goatman2.png", __ASSET__assets_images_monster_goatman2_png);
		type.set ("assets/images/monster/goatman2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goblin1.png", __ASSET__assets_images_monster_goblin1_png);
		type.set ("assets/images/monster/goblin1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goblin2.png", __ASSET__assets_images_monster_goblin2_png);
		type.set ("assets/images/monster/goblin2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goblin3.png", __ASSET__assets_images_monster_goblin3_png);
		type.set ("assets/images/monster/goblin3.png", AssetType.IMAGE);
		className.set ("assets/images/monster/goblin4.png", __ASSET__assets_images_monster_goblin4_png);
		type.set ("assets/images/monster/goblin4.png", AssetType.IMAGE);
		className.set ("assets/images/monster/golem.png", __ASSET__assets_images_monster_golem_png);
		type.set ("assets/images/monster/golem.png", AssetType.IMAGE);
		className.set ("assets/images/monster/gorilla.png", __ASSET__assets_images_monster_gorilla_png);
		type.set ("assets/images/monster/gorilla.png", AssetType.IMAGE);
		className.set ("assets/images/monster/grizzy_bear.png", __ASSET__assets_images_monster_grizzy_bear_png);
		type.set ("assets/images/monster/grizzy_bear.png", AssetType.IMAGE);
		className.set ("assets/images/monster/hairy_demon.png", __ASSET__assets_images_monster_hairy_demon_png);
		type.set ("assets/images/monster/hairy_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/harpy_fly.png", __ASSET__assets_images_monster_harpy_fly_png);
		type.set ("assets/images/monster/harpy_fly.png", AssetType.IMAGE);
		className.set ("assets/images/monster/harpy_walk.png", __ASSET__assets_images_monster_harpy_walk_png);
		type.set ("assets/images/monster/harpy_walk.png", AssetType.IMAGE);
		className.set ("assets/images/monster/homunculus.png", __ASSET__assets_images_monster_homunculus_png);
		type.set ("assets/images/monster/homunculus.png", AssetType.IMAGE);
		className.set ("assets/images/monster/horse1.png", __ASSET__assets_images_monster_horse1_png);
		type.set ("assets/images/monster/horse1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/horse2.png", __ASSET__assets_images_monster_horse2_png);
		type.set ("assets/images/monster/horse2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/horse3.png", __ASSET__assets_images_monster_horse3_png);
		type.set ("assets/images/monster/horse3.png", AssetType.IMAGE);
		className.set ("assets/images/monster/horse4.png", __ASSET__assets_images_monster_horse4_png);
		type.set ("assets/images/monster/horse4.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ice_demon.png", __ASSET__assets_images_monster_ice_demon_png);
		type.set ("assets/images/monster/ice_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/imp.png", __ASSET__assets_images_monster_imp_png);
		type.set ("assets/images/monster/imp.png", AssetType.IMAGE);
		className.set ("assets/images/monster/insectivorous_plant.png", __ASSET__assets_images_monster_insectivorous_plant_png);
		type.set ("assets/images/monster/insectivorous_plant.png", AssetType.IMAGE);
		className.set ("assets/images/monster/insect_demon.png", __ASSET__assets_images_monster_insect_demon_png);
		type.set ("assets/images/monster/insect_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/invader.png", __ASSET__assets_images_monster_invader_png);
		type.set ("assets/images/monster/invader.png", AssetType.IMAGE);
		className.set ("assets/images/monster/iron_golem.png", __ASSET__assets_images_monster_iron_golem_png);
		type.set ("assets/images/monster/iron_golem.png", AssetType.IMAGE);
		className.set ("assets/images/monster/jelly.png", __ASSET__assets_images_monster_jelly_png);
		type.set ("assets/images/monster/jelly.png", AssetType.IMAGE);
		className.set ("assets/images/monster/jellyfish.png", __ASSET__assets_images_monster_jellyfish_png);
		type.set ("assets/images/monster/jellyfish.png", AssetType.IMAGE);
		className.set ("assets/images/monster/legion.png", __ASSET__assets_images_monster_legion_png);
		type.set ("assets/images/monster/legion.png", AssetType.IMAGE);
		className.set ("assets/images/monster/lesser_fiend1.png", __ASSET__assets_images_monster_lesser_fiend1_png);
		type.set ("assets/images/monster/lesser_fiend1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/lesser_fiend2.png", __ASSET__assets_images_monster_lesser_fiend2_png);
		type.set ("assets/images/monster/lesser_fiend2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/liche.png", __ASSET__assets_images_monster_liche_png);
		type.set ("assets/images/monster/liche.png", AssetType.IMAGE);
		className.set ("assets/images/monster/lizard.png", __ASSET__assets_images_monster_lizard_png);
		type.set ("assets/images/monster/lizard.png", AssetType.IMAGE);
		className.set ("assets/images/monster/lizardman1.png", __ASSET__assets_images_monster_lizardman1_png);
		type.set ("assets/images/monster/lizardman1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/lizardman2.png", __ASSET__assets_images_monster_lizardman2_png);
		type.set ("assets/images/monster/lizardman2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/magot.png", __ASSET__assets_images_monster_magot_png);
		type.set ("assets/images/monster/magot.png", AssetType.IMAGE);
		className.set ("assets/images/monster/mandragora.png", __ASSET__assets_images_monster_mandragora_png);
		type.set ("assets/images/monster/mandragora.png", AssetType.IMAGE);
		className.set ("assets/images/monster/mantis.png", __ASSET__assets_images_monster_mantis_png);
		type.set ("assets/images/monster/mantis.png", AssetType.IMAGE);
		className.set ("assets/images/monster/medousa.png", __ASSET__assets_images_monster_medousa_png);
		type.set ("assets/images/monster/medousa.png", AssetType.IMAGE);
		className.set ("assets/images/monster/mindflayer.png", __ASSET__assets_images_monster_mindflayer_png);
		type.set ("assets/images/monster/mindflayer.png", AssetType.IMAGE);
		className.set ("assets/images/monster/minotaur1.png", __ASSET__assets_images_monster_minotaur1_png);
		type.set ("assets/images/monster/minotaur1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/minotaur2.png", __ASSET__assets_images_monster_minotaur2_png);
		type.set ("assets/images/monster/minotaur2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/mosquito.png", __ASSET__assets_images_monster_mosquito_png);
		type.set ("assets/images/monster/mosquito.png", AssetType.IMAGE);
		className.set ("assets/images/monster/mummy.png", __ASSET__assets_images_monster_mummy_png);
		type.set ("assets/images/monster/mummy.png", AssetType.IMAGE);
		className.set ("assets/images/monster/myconid.png", __ASSET__assets_images_monster_myconid_png);
		type.set ("assets/images/monster/myconid.png", AssetType.IMAGE);
		className.set ("assets/images/monster/nightmare.png", __ASSET__assets_images_monster_nightmare_png);
		type.set ("assets/images/monster/nightmare.png", AssetType.IMAGE);
		className.set ("assets/images/monster/octopus_ground.png", __ASSET__assets_images_monster_octopus_ground_png);
		type.set ("assets/images/monster/octopus_ground.png", AssetType.IMAGE);
		className.set ("assets/images/monster/octopus_water.png", __ASSET__assets_images_monster_octopus_water_png);
		type.set ("assets/images/monster/octopus_water.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ogre1.png", __ASSET__assets_images_monster_ogre1_png);
		type.set ("assets/images/monster/ogre1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ogre2.png", __ASSET__assets_images_monster_ogre2_png);
		type.set ("assets/images/monster/ogre2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/orc1.png", __ASSET__assets_images_monster_orc1_png);
		type.set ("assets/images/monster/orc1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/orc2.png", __ASSET__assets_images_monster_orc2_png);
		type.set ("assets/images/monster/orc2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/panther.png", __ASSET__assets_images_monster_panther_png);
		type.set ("assets/images/monster/panther.png", AssetType.IMAGE);
		className.set ("assets/images/monster/pig.png", __ASSET__assets_images_monster_pig_png);
		type.set ("assets/images/monster/pig.png", AssetType.IMAGE);
		className.set ("assets/images/monster/pillbug.png", __ASSET__assets_images_monster_pillbug_png);
		type.set ("assets/images/monster/pillbug.png", AssetType.IMAGE);
		className.set ("assets/images/monster/poison_demon.png", __ASSET__assets_images_monster_poison_demon_png);
		type.set ("assets/images/monster/poison_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/polar_bear.png", __ASSET__assets_images_monster_polar_bear_png);
		type.set ("assets/images/monster/polar_bear.png", AssetType.IMAGE);
		className.set ("assets/images/monster/pumpkin_head.png", __ASSET__assets_images_monster_pumpkin_head_png);
		type.set ("assets/images/monster/pumpkin_head.png", AssetType.IMAGE);
		className.set ("assets/images/monster/rat.png", __ASSET__assets_images_monster_rat_png);
		type.set ("assets/images/monster/rat.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ratman1.png", __ASSET__assets_images_monster_ratman1_png);
		type.set ("assets/images/monster/ratman1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/ratman2.png", __ASSET__assets_images_monster_ratman2_png);
		type.set ("assets/images/monster/ratman2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/reaper.png", __ASSET__assets_images_monster_reaper_png);
		type.set ("assets/images/monster/reaper.png", AssetType.IMAGE);
		className.set ("assets/images/monster/saber_tiger.png", __ASSET__assets_images_monster_saber_tiger_png);
		type.set ("assets/images/monster/saber_tiger.png", AssetType.IMAGE);
		className.set ("assets/images/monster/scorpion.png", __ASSET__assets_images_monster_scorpion_png);
		type.set ("assets/images/monster/scorpion.png", AssetType.IMAGE);
		className.set ("assets/images/monster/sea_serpent.png", __ASSET__assets_images_monster_sea_serpent_png);
		type.set ("assets/images/monster/sea_serpent.png", AssetType.IMAGE);
		className.set ("assets/images/monster/shadow_demon.png", __ASSET__assets_images_monster_shadow_demon_png);
		type.set ("assets/images/monster/shadow_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/sheep.png", __ASSET__assets_images_monster_sheep_png);
		type.set ("assets/images/monster/sheep.png", AssetType.IMAGE);
		className.set ("assets/images/monster/shellfish.png", __ASSET__assets_images_monster_shellfish_png);
		type.set ("assets/images/monster/shellfish.png", AssetType.IMAGE);
		className.set ("assets/images/monster/shrieker.png", __ASSET__assets_images_monster_shrieker_png);
		type.set ("assets/images/monster/shrieker.png", AssetType.IMAGE);
		className.set ("assets/images/monster/skeleton1.png", __ASSET__assets_images_monster_skeleton1_png);
		type.set ("assets/images/monster/skeleton1.png", AssetType.IMAGE);
		className.set ("assets/images/monster/skeleton2.png", __ASSET__assets_images_monster_skeleton2_png);
		type.set ("assets/images/monster/skeleton2.png", AssetType.IMAGE);
		className.set ("assets/images/monster/skeleton3.png", __ASSET__assets_images_monster_skeleton3_png);
		type.set ("assets/images/monster/skeleton3.png", AssetType.IMAGE);
		className.set ("assets/images/monster/skeleton_dog.png", __ASSET__assets_images_monster_skeleton_dog_png);
		type.set ("assets/images/monster/skeleton_dog.png", AssetType.IMAGE);
		className.set ("assets/images/monster/skeleton_horse.png", __ASSET__assets_images_monster_skeleton_horse_png);
		type.set ("assets/images/monster/skeleton_horse.png", AssetType.IMAGE);
		className.set ("assets/images/monster/slime.png", __ASSET__assets_images_monster_slime_png);
		type.set ("assets/images/monster/slime.png", AssetType.IMAGE);
		className.set ("assets/images/monster/slug.png", __ASSET__assets_images_monster_slug_png);
		type.set ("assets/images/monster/slug.png", AssetType.IMAGE);
		className.set ("assets/images/monster/snail.png", __ASSET__assets_images_monster_snail_png);
		type.set ("assets/images/monster/snail.png", AssetType.IMAGE);
		className.set ("assets/images/monster/snake.png", __ASSET__assets_images_monster_snake_png);
		type.set ("assets/images/monster/snake.png", AssetType.IMAGE);
		className.set ("assets/images/monster/snake_man.png", __ASSET__assets_images_monster_snake_man_png);
		type.set ("assets/images/monster/snake_man.png", AssetType.IMAGE);
		className.set ("assets/images/monster/snow_panther.png", __ASSET__assets_images_monster_snow_panther_png);
		type.set ("assets/images/monster/snow_panther.png", AssetType.IMAGE);
		className.set ("assets/images/monster/snow_wolf.png", __ASSET__assets_images_monster_snow_wolf_png);
		type.set ("assets/images/monster/snow_wolf.png", AssetType.IMAGE);
		className.set ("assets/images/monster/soldier_ant.png", __ASSET__assets_images_monster_soldier_ant_png);
		type.set ("assets/images/monster/soldier_ant.png", AssetType.IMAGE);
		className.set ("assets/images/monster/specter.png", __ASSET__assets_images_monster_specter_png);
		type.set ("assets/images/monster/specter.png", AssetType.IMAGE);
		className.set ("assets/images/monster/spider.png", __ASSET__assets_images_monster_spider_png);
		type.set ("assets/images/monster/spider.png", AssetType.IMAGE);
		className.set ("assets/images/monster/stag.png", __ASSET__assets_images_monster_stag_png);
		type.set ("assets/images/monster/stag.png", AssetType.IMAGE);
		className.set ("assets/images/monster/succubus.png", __ASSET__assets_images_monster_succubus_png);
		type.set ("assets/images/monster/succubus.png", AssetType.IMAGE);
		className.set ("assets/images/monster/tentacle.png", __ASSET__assets_images_monster_tentacle_png);
		type.set ("assets/images/monster/tentacle.png", AssetType.IMAGE);
		className.set ("assets/images/monster/tick.png", __ASSET__assets_images_monster_tick_png);
		type.set ("assets/images/monster/tick.png", AssetType.IMAGE);
		className.set ("assets/images/monster/tiger.png", __ASSET__assets_images_monster_tiger_png);
		type.set ("assets/images/monster/tiger.png", AssetType.IMAGE);
		className.set ("assets/images/monster/toad.png", __ASSET__assets_images_monster_toad_png);
		type.set ("assets/images/monster/toad.png", AssetType.IMAGE);
		className.set ("assets/images/monster/vampire.png", __ASSET__assets_images_monster_vampire_png);
		type.set ("assets/images/monster/vampire.png", AssetType.IMAGE);
		className.set ("assets/images/monster/vine.png", __ASSET__assets_images_monster_vine_png);
		type.set ("assets/images/monster/vine.png", AssetType.IMAGE);
		className.set ("assets/images/monster/vulture_demon.png", __ASSET__assets_images_monster_vulture_demon_png);
		type.set ("assets/images/monster/vulture_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/water_demon.png", __ASSET__assets_images_monster_water_demon_png);
		type.set ("assets/images/monster/water_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/werewolf.png", __ASSET__assets_images_monster_werewolf_png);
		type.set ("assets/images/monster/werewolf.png", AssetType.IMAGE);
		className.set ("assets/images/monster/wight.png", __ASSET__assets_images_monster_wight_png);
		type.set ("assets/images/monster/wight.png", AssetType.IMAGE);
		className.set ("assets/images/monster/wind_demon.png", __ASSET__assets_images_monster_wind_demon_png);
		type.set ("assets/images/monster/wind_demon.png", AssetType.IMAGE);
		className.set ("assets/images/monster/wolf.png", __ASSET__assets_images_monster_wolf_png);
		type.set ("assets/images/monster/wolf.png", AssetType.IMAGE);
		className.set ("assets/images/monster/worker_ant.png", __ASSET__assets_images_monster_worker_ant_png);
		type.set ("assets/images/monster/worker_ant.png", AssetType.IMAGE);
		className.set ("assets/images/monster/worm.png", __ASSET__assets_images_monster_worm_png);
		type.set ("assets/images/monster/worm.png", AssetType.IMAGE);
		className.set ("assets/images/monster/wraith.png", __ASSET__assets_images_monster_wraith_png);
		type.set ("assets/images/monster/wraith.png", AssetType.IMAGE);
		className.set ("assets/images/monster/wyvern.png", __ASSET__assets_images_monster_wyvern_png);
		type.set ("assets/images/monster/wyvern.png", AssetType.IMAGE);
		className.set ("assets/images/monster/yeti.png", __ASSET__assets_images_monster_yeti_png);
		type.set ("assets/images/monster/yeti.png", AssetType.IMAGE);
		className.set ("assets/images/monster/zombie.png", __ASSET__assets_images_monster_zombie_png);
		type.set ("assets/images/monster/zombie.png", AssetType.IMAGE);
		className.set ("assets/images/pad/a.png", __ASSET__assets_images_pad_a_png);
		type.set ("assets/images/pad/a.png", AssetType.IMAGE);
		className.set ("assets/images/pad/b.png", __ASSET__assets_images_pad_b_png);
		type.set ("assets/images/pad/b.png", AssetType.IMAGE);
		className.set ("assets/images/pad/background.png", __ASSET__assets_images_pad_background_png);
		type.set ("assets/images/pad/background.png", AssetType.IMAGE);
		className.set ("assets/images/pad/down.png", __ASSET__assets_images_pad_down_png);
		type.set ("assets/images/pad/down.png", AssetType.IMAGE);
		className.set ("assets/images/pad/left.png", __ASSET__assets_images_pad_left_png);
		type.set ("assets/images/pad/left.png", AssetType.IMAGE);
		className.set ("assets/images/pad/right.png", __ASSET__assets_images_pad_right_png);
		type.set ("assets/images/pad/right.png", AssetType.IMAGE);
		className.set ("assets/images/pad/up.png", __ASSET__assets_images_pad_up_png);
		type.set ("assets/images/pad/up.png", AssetType.IMAGE);
		className.set ("assets/images/player.png", __ASSET__assets_images_player_png);
		type.set ("assets/images/player.png", AssetType.IMAGE);
		className.set ("assets/images/result/girl.png", __ASSET__assets_images_result_girl_png);
		type.set ("assets/images/result/girl.png", AssetType.IMAGE);
		className.set ("assets/images/result/girl2.png", __ASSET__assets_images_result_girl2_png);
		type.set ("assets/images/result/girl2.png", AssetType.IMAGE);
		className.set ("assets/images/result/girl3.png", __ASSET__assets_images_result_girl3_png);
		type.set ("assets/images/result/girl3.png", AssetType.IMAGE);
		className.set ("assets/images/result/kira.png", __ASSET__assets_images_result_kira_png);
		type.set ("assets/images/result/kira.png", AssetType.IMAGE);
		className.set ("assets/images/smoke.png", __ASSET__assets_images_smoke_png);
		type.set ("assets/images/smoke.png", AssetType.IMAGE);
		className.set ("assets/images/spike.png", __ASSET__assets_images_spike_png);
		type.set ("assets/images/spike.png", AssetType.IMAGE);
		className.set ("assets/images/tiles.png", __ASSET__assets_images_tiles_png);
		type.set ("assets/images/tiles.png", AssetType.IMAGE);
		className.set ("assets/images/title/bg.png", __ASSET__assets_images_title_bg_png);
		type.set ("assets/images/title/bg.png", AssetType.IMAGE);
		className.set ("assets/images/title/cloud1.png", __ASSET__assets_images_title_cloud1_png);
		type.set ("assets/images/title/cloud1.png", AssetType.IMAGE);
		className.set ("assets/images/title/cloud2.png", __ASSET__assets_images_title_cloud2_png);
		type.set ("assets/images/title/cloud2.png", AssetType.IMAGE);
		className.set ("assets/images/title/cloud3.png", __ASSET__assets_images_title_cloud3_png);
		type.set ("assets/images/title/cloud3.png", AssetType.IMAGE);
		className.set ("assets/images/title/cloud4.png", __ASSET__assets_images_title_cloud4_png);
		type.set ("assets/images/title/cloud4.png", AssetType.IMAGE);
		className.set ("assets/images/title/sunbeam.png", __ASSET__assets_images_title_sunbeam_png);
		type.set ("assets/images/title/sunbeam.png", AssetType.IMAGE);
		className.set ("assets/images/ui/arrow.png", __ASSET__assets_images_ui_arrow_png);
		type.set ("assets/images/ui/arrow.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/armor.png", __ASSET__assets_images_ui_category_armor_png);
		type.set ("assets/images/ui/category/armor.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/food.png", __ASSET__assets_images_ui_category_food_png);
		type.set ("assets/images/ui/category/food.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/orb.png", __ASSET__assets_images_ui_category_orb_png);
		type.set ("assets/images/ui/category/orb.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/potion.png", __ASSET__assets_images_ui_category_potion_png);
		type.set ("assets/images/ui/category/potion.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/ring.png", __ASSET__assets_images_ui_category_ring_png);
		type.set ("assets/images/ui/category/ring.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/scroll.png", __ASSET__assets_images_ui_category_scroll_png);
		type.set ("assets/images/ui/category/scroll.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/wand.png", __ASSET__assets_images_ui_category_wand_png);
		type.set ("assets/images/ui/category/wand.png", AssetType.IMAGE);
		className.set ("assets/images/ui/category/weapon.png", __ASSET__assets_images_ui_category_weapon_png);
		type.set ("assets/images/ui/category/weapon.png", AssetType.IMAGE);
		className.set ("assets/images/ui/enemylog_cursor.png", __ASSET__assets_images_ui_enemylog_cursor_png);
		type.set ("assets/images/ui/enemylog_cursor.png", AssetType.IMAGE);
		className.set ("assets/images/ui/frame32x256.png", __ASSET__assets_images_ui_frame32x256_png);
		type.set ("assets/images/ui/frame32x256.png", AssetType.IMAGE);
		className.set ("assets/images/ui/itemcommand.png", __ASSET__assets_images_ui_itemcommand_png);
		type.set ("assets/images/ui/itemcommand.png", AssetType.IMAGE);
		className.set ("assets/images/ui/itemlog_cursor.png", __ASSET__assets_images_ui_itemlog_cursor_png);
		type.set ("assets/images/ui/itemlog_cursor.png", AssetType.IMAGE);
		className.set ("assets/images/ui/listitem.png", __ASSET__assets_images_ui_listitem_png);
		type.set ("assets/images/ui/listitem.png", AssetType.IMAGE);
		className.set ("assets/images/ui/listitem2.png", __ASSET__assets_images_ui_listitem2_png);
		type.set ("assets/images/ui/listitem2.png", AssetType.IMAGE);
		className.set ("assets/images/ui/message.png", __ASSET__assets_images_ui_message_png);
		type.set ("assets/images/ui/message.png", AssetType.IMAGE);
		className.set ("assets/images/ui/messagetext.png", __ASSET__assets_images_ui_messagetext_png);
		type.set ("assets/images/ui/messagetext.png", AssetType.IMAGE);
		className.set ("assets/images/ui/window200x100.png", __ASSET__assets_images_ui_window200x100_png);
		type.set ("assets/images/ui/window200x100.png", AssetType.IMAGE);
		className.set ("assets/images/ui/window624x74.png", __ASSET__assets_images_ui_window624x74_png);
		type.set ("assets/images/ui/window624x74.png", AssetType.IMAGE);
		className.set ("assets/levels/000.tmx", __ASSET__assets_levels_000_tmx);
		type.set ("assets/levels/000.tmx", AssetType.TEXT);
		className.set ("assets/levels/001.tmx", __ASSET__assets_levels_001_tmx);
		type.set ("assets/levels/001.tmx", AssetType.TEXT);
		className.set ("assets/levels/002.tmx", __ASSET__assets_levels_002_tmx);
		type.set ("assets/levels/002.tmx", AssetType.TEXT);
		className.set ("assets/levels/003.tmx", __ASSET__assets_levels_003_tmx);
		type.set ("assets/levels/003.tmx", AssetType.TEXT);
		className.set ("assets/levels/004.tmx", __ASSET__assets_levels_004_tmx);
		type.set ("assets/levels/004.tmx", AssetType.TEXT);
		className.set ("assets/levels/005.tmx", __ASSET__assets_levels_005_tmx);
		type.set ("assets/levels/005.tmx", AssetType.TEXT);
		className.set ("assets/levels/006.tmx", __ASSET__assets_levels_006_tmx);
		type.set ("assets/levels/006.tmx", AssetType.TEXT);
		className.set ("assets/levels/007.tmx", __ASSET__assets_levels_007_tmx);
		type.set ("assets/levels/007.tmx", AssetType.TEXT);
		className.set ("assets/levels/008.tmx", __ASSET__assets_levels_008_tmx);
		type.set ("assets/levels/008.tmx", AssetType.TEXT);
		className.set ("assets/levels/009.tmx", __ASSET__assets_levels_009_tmx);
		type.set ("assets/levels/009.tmx", AssetType.TEXT);
		className.set ("assets/levels/010.tmx", __ASSET__assets_levels_010_tmx);
		type.set ("assets/levels/010.tmx", AssetType.TEXT);
		className.set ("assets/levels/011.tmx", __ASSET__assets_levels_011_tmx);
		type.set ("assets/levels/011.tmx", AssetType.TEXT);
		className.set ("assets/levels/012.tmx", __ASSET__assets_levels_012_tmx);
		type.set ("assets/levels/012.tmx", AssetType.TEXT);
		className.set ("assets/levels/013.tmx", __ASSET__assets_levels_013_tmx);
		type.set ("assets/levels/013.tmx", AssetType.TEXT);
		className.set ("assets/levels/014.tmx", __ASSET__assets_levels_014_tmx);
		type.set ("assets/levels/014.tmx", AssetType.TEXT);
		className.set ("assets/levels/015.tmx", __ASSET__assets_levels_015_tmx);
		type.set ("assets/levels/015.tmx", AssetType.TEXT);
		className.set ("assets/levels/016.tmx", __ASSET__assets_levels_016_tmx);
		type.set ("assets/levels/016.tmx", AssetType.TEXT);
		className.set ("assets/levels/017.tmx", __ASSET__assets_levels_017_tmx);
		type.set ("assets/levels/017.tmx", AssetType.TEXT);
		className.set ("assets/levels/018.tmx", __ASSET__assets_levels_018_tmx);
		type.set ("assets/levels/018.tmx", AssetType.TEXT);
		className.set ("assets/levels/019.tmx", __ASSET__assets_levels_019_tmx);
		type.set ("assets/levels/019.tmx", AssetType.TEXT);
		className.set ("assets/levels/020.tmx", __ASSET__assets_levels_020_tmx);
		type.set ("assets/levels/020.tmx", AssetType.TEXT);
		className.set ("assets/levels/021.tmx", __ASSET__assets_levels_021_tmx);
		type.set ("assets/levels/021.tmx", AssetType.TEXT);
		className.set ("assets/levels/022.tmx", __ASSET__assets_levels_022_tmx);
		type.set ("assets/levels/022.tmx", AssetType.TEXT);
		className.set ("assets/levels/023.tmx", __ASSET__assets_levels_023_tmx);
		type.set ("assets/levels/023.tmx", AssetType.TEXT);
		className.set ("assets/levels/024.tmx", __ASSET__assets_levels_024_tmx);
		type.set ("assets/levels/024.tmx", AssetType.TEXT);
		className.set ("assets/levels/025.tmx", __ASSET__assets_levels_025_tmx);
		type.set ("assets/levels/025.tmx", AssetType.TEXT);
		className.set ("assets/levels/026.tmx", __ASSET__assets_levels_026_tmx);
		type.set ("assets/levels/026.tmx", AssetType.TEXT);
		className.set ("assets/levels/027.tmx", __ASSET__assets_levels_027_tmx);
		type.set ("assets/levels/027.tmx", AssetType.TEXT);
		className.set ("assets/levels/028.tmx", __ASSET__assets_levels_028_tmx);
		type.set ("assets/levels/028.tmx", AssetType.TEXT);
		className.set ("assets/levels/029.tmx", __ASSET__assets_levels_029_tmx);
		type.set ("assets/levels/029.tmx", AssetType.TEXT);
		className.set ("assets/levels/030.tmx", __ASSET__assets_levels_030_tmx);
		type.set ("assets/levels/030.tmx", AssetType.TEXT);
		className.set ("assets/levels/031.tmx", __ASSET__assets_levels_031_tmx);
		type.set ("assets/levels/031.tmx", AssetType.TEXT);
		className.set ("assets/levels/032.tmx", __ASSET__assets_levels_032_tmx);
		type.set ("assets/levels/032.tmx", AssetType.TEXT);
		className.set ("assets/levels/033.tmx", __ASSET__assets_levels_033_tmx);
		type.set ("assets/levels/033.tmx", AssetType.TEXT);
		className.set ("assets/levels/034.tmx", __ASSET__assets_levels_034_tmx);
		type.set ("assets/levels/034.tmx", AssetType.TEXT);
		className.set ("assets/levels/035.tmx", __ASSET__assets_levels_035_tmx);
		type.set ("assets/levels/035.tmx", AssetType.TEXT);
		className.set ("assets/levels/036.tmx", __ASSET__assets_levels_036_tmx);
		type.set ("assets/levels/036.tmx", AssetType.TEXT);
		className.set ("assets/levels/037.tmx", __ASSET__assets_levels_037_tmx);
		type.set ("assets/levels/037.tmx", AssetType.TEXT);
		className.set ("assets/levels/038.tmx", __ASSET__assets_levels_038_tmx);
		type.set ("assets/levels/038.tmx", AssetType.TEXT);
		className.set ("assets/levels/039.tmx", __ASSET__assets_levels_039_tmx);
		type.set ("assets/levels/039.tmx", AssetType.TEXT);
		className.set ("assets/levels/040.tmx", __ASSET__assets_levels_040_tmx);
		type.set ("assets/levels/040.tmx", AssetType.TEXT);
		className.set ("assets/levels/041.tmx", __ASSET__assets_levels_041_tmx);
		type.set ("assets/levels/041.tmx", AssetType.TEXT);
		className.set ("assets/levels/042.tmx", __ASSET__assets_levels_042_tmx);
		type.set ("assets/levels/042.tmx", AssetType.TEXT);
		className.set ("assets/levels/043.tmx", __ASSET__assets_levels_043_tmx);
		type.set ("assets/levels/043.tmx", AssetType.TEXT);
		className.set ("assets/levels/044.tmx", __ASSET__assets_levels_044_tmx);
		type.set ("assets/levels/044.tmx", AssetType.TEXT);
		className.set ("assets/levels/045.tmx", __ASSET__assets_levels_045_tmx);
		type.set ("assets/levels/045.tmx", AssetType.TEXT);
		className.set ("assets/levels/046.tmx", __ASSET__assets_levels_046_tmx);
		type.set ("assets/levels/046.tmx", AssetType.TEXT);
		className.set ("assets/levels/047.tmx", __ASSET__assets_levels_047_tmx);
		type.set ("assets/levels/047.tmx", AssetType.TEXT);
		className.set ("assets/levels/048.tmx", __ASSET__assets_levels_048_tmx);
		type.set ("assets/levels/048.tmx", AssetType.TEXT);
		className.set ("assets/levels/049.tmx", __ASSET__assets_levels_049_tmx);
		type.set ("assets/levels/049.tmx", AssetType.TEXT);
		className.set ("assets/levels/050.tmx", __ASSET__assets_levels_050_tmx);
		type.set ("assets/levels/050.tmx", AssetType.TEXT);
		className.set ("assets/levels/500.tmx", __ASSET__assets_levels_500_tmx);
		type.set ("assets/levels/500.tmx", AssetType.TEXT);
		className.set ("assets/levels/ansi/enemy.csv", __ASSET__assets_levels_ansi_enemy_csv);
		type.set ("assets/levels/ansi/enemy.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/enemy_appear.csv", __ASSET__assets_levels_ansi_enemy_appear_csv);
		type.set ("assets/levels/ansi/enemy_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/enemy_nightmare.csv", __ASSET__assets_levels_ansi_enemy_nightmare_csv);
		type.set ("assets/levels/ansi/enemy_nightmare.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/item_appear.csv", __ASSET__assets_levels_ansi_item_appear_csv);
		type.set ("assets/levels/ansi/item_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/item_consumable.csv", __ASSET__assets_levels_ansi_item_consumable_csv);
		type.set ("assets/levels/ansi/item_consumable.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/item_equipment.csv", __ASSET__assets_levels_ansi_item_equipment_csv);
		type.set ("assets/levels/ansi/item_equipment.csv", AssetType.TEXT);
		className.set ("assets/levels/ansi/player.csv", __ASSET__assets_levels_ansi_player_csv);
		type.set ("assets/levels/ansi/player.csv", AssetType.TEXT);
		className.set ("assets/levels/enemy.csv", __ASSET__assets_levels_enemy_csv);
		type.set ("assets/levels/enemy.csv", AssetType.TEXT);
		className.set ("assets/levels/enemy_appear.csv", __ASSET__assets_levels_enemy_appear_csv);
		type.set ("assets/levels/enemy_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/enemy_nightmare.csv", __ASSET__assets_levels_enemy_nightmare_csv);
		type.set ("assets/levels/enemy_nightmare.csv", AssetType.TEXT);
		className.set ("assets/levels/item_appear.csv", __ASSET__assets_levels_item_appear_csv);
		type.set ("assets/levels/item_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/item_consumable.csv", __ASSET__assets_levels_item_consumable_csv);
		type.set ("assets/levels/item_consumable.csv", AssetType.TEXT);
		className.set ("assets/levels/item_equipment.csv", __ASSET__assets_levels_item_equipment_csv);
		type.set ("assets/levels/item_equipment.csv", AssetType.TEXT);
		className.set ("assets/levels/player.csv", __ASSET__assets_levels_player_csv);
		type.set ("assets/levels/player.csv", AssetType.TEXT);
		className.set ("assets/levels/tilenone.png", __ASSET__assets_levels_tilenone_png);
		type.set ("assets/levels/tilenone.png", AssetType.IMAGE);
		className.set ("assets/levels/tileset.png", __ASSET__assets_levels_tileset_png);
		type.set ("assets/levels/tileset.png", AssetType.IMAGE);
		className.set ("assets/levels/utf8/enemy.csv", __ASSET__assets_levels_utf8_enemy_csv);
		type.set ("assets/levels/utf8/enemy.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/enemy_appear.csv", __ASSET__assets_levels_utf8_enemy_appear_csv);
		type.set ("assets/levels/utf8/enemy_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/enemy_nightmare.csv", __ASSET__assets_levels_utf8_enemy_nightmare_csv);
		type.set ("assets/levels/utf8/enemy_nightmare.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/item_appear.csv", __ASSET__assets_levels_utf8_item_appear_csv);
		type.set ("assets/levels/utf8/item_appear.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/item_consumable.csv", __ASSET__assets_levels_utf8_item_consumable_csv);
		type.set ("assets/levels/utf8/item_consumable.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/item_equipment.csv", __ASSET__assets_levels_utf8_item_equipment_csv);
		type.set ("assets/levels/utf8/item_equipment.csv", AssetType.TEXT);
		className.set ("assets/levels/utf8/player.csv", __ASSET__assets_levels_utf8_player_csv);
		type.set ("assets/levels/utf8/player.csv", AssetType.TEXT);
		className.set ("assets/TemplateCSV/item_consumable.csv", __ASSET__assets_templatecsv_item_consumable_csv);
		type.set ("assets/TemplateCSV/item_consumable.csv", AssetType.TEXT);
		className.set ("001", __ASSET__assets_music_001_ogg);
		type.set ("001", AssetType.SOUND);
		className.set ("002", __ASSET__assets_music_002_ogg);
		type.set ("002", AssetType.SOUND);
		className.set ("003", __ASSET__assets_music_003_ogg);
		type.set ("003", AssetType.SOUND);
		className.set ("004", __ASSET__assets_music_004_ogg);
		type.set ("004", AssetType.SOUND);
		className.set ("005", __ASSET__assets_music_005_ogg);
		type.set ("005", AssetType.SOUND);
		className.set ("006", __ASSET__assets_music_006_ogg);
		type.set ("006", AssetType.SOUND);
		className.set ("007", __ASSET__assets_music_007_ogg);
		type.set ("007", AssetType.SOUND);
		className.set ("008", __ASSET__assets_music_008_ogg);
		type.set ("008", AssetType.SOUND);
		className.set ("009", __ASSET__assets_music_009_ogg);
		type.set ("009", AssetType.SOUND);
		className.set ("010", __ASSET__assets_music_010_ogg);
		type.set ("010", AssetType.SOUND);
		className.set ("011", __ASSET__assets_music_011_ogg);
		type.set ("011", AssetType.SOUND);
		className.set ("012", __ASSET__assets_music_012_ogg);
		type.set ("012", AssetType.SOUND);
		className.set ("013", __ASSET__assets_music_013_ogg);
		type.set ("013", AssetType.SOUND);
		className.set ("014", __ASSET__assets_music_014_ogg);
		type.set ("014", AssetType.SOUND);
		className.set ("015", __ASSET__assets_music_015_ogg);
		type.set ("015", AssetType.SOUND);
		className.set ("016", __ASSET__assets_music_016_ogg);
		type.set ("016", AssetType.SOUND);
		className.set ("nightmare", __ASSET__assets_music_nightmare_ogg);
		type.set ("nightmare", AssetType.SOUND);
		className.set ("result", __ASSET__assets_music_result_ogg);
		type.set ("result", AssetType.SOUND);
		className.set ("op1", __ASSET__assets_music_op1_ogg);
		type.set ("op1", AssetType.SOUND);
		className.set ("op2", __ASSET__assets_music_op2_ogg);
		type.set ("op2", AssetType.SOUND);
		className.set ("pickup", __ASSET__assets_sounds_pickup2_ogg);
		type.set ("pickup", AssetType.SOUND);
		className.set ("foot", __ASSET__assets_sounds_foot2_ogg);
		type.set ("foot", AssetType.SOUND);
		className.set ("destroy", __ASSET__assets_sounds_destroy_ogg);
		type.set ("destroy", AssetType.SOUND);
		className.set ("hit", __ASSET__assets_sounds_hit_ogg);
		type.set ("hit", AssetType.SOUND);
		className.set ("critical", __ASSET__assets_sounds_hit4_ogg);
		type.set ("critical", AssetType.SOUND);
		className.set ("eat", __ASSET__assets_sounds_eat_ogg);
		type.set ("eat", AssetType.SOUND);
		className.set ("enemy", __ASSET__assets_sounds_enemy_ogg);
		type.set ("enemy", AssetType.SOUND);
		className.set ("equip", __ASSET__assets_sounds_equip_ogg);
		type.set ("equip", AssetType.SOUND);
		className.set ("put", __ASSET__assets_sounds_put_ogg);
		type.set ("put", AssetType.SOUND);
		className.set ("avoid", __ASSET__assets_sounds_avoid2_ogg);
		type.set ("avoid", AssetType.SOUND);
		className.set ("recover", __ASSET__assets_sounds_recover_ogg);
		type.set ("recover", AssetType.SOUND);
		className.set ("gameover", __ASSET__assets_sounds_destroy2_ogg);
		type.set ("gameover", AssetType.SOUND);
		className.set ("menu", __ASSET__assets_sounds_menu_ogg);
		type.set ("menu", AssetType.SOUND);
		className.set ("pi", __ASSET__assets_sounds_pi_ogg);
		type.set ("pi", AssetType.SOUND);
		className.set ("hint", __ASSET__assets_sounds_hint_ogg);
		type.set ("hint", AssetType.SOUND);
		className.set ("coin", __ASSET__assets_sounds_coin_ogg);
		type.set ("coin", AssetType.SOUND);
		className.set ("levelup", __ASSET__assets_sounds_levelup_ogg);
		type.set ("levelup", AssetType.SOUND);
		className.set ("badstatus", __ASSET__assets_sounds_badstatus_ogg);
		type.set ("badstatus", AssetType.SOUND);
		className.set ("warp", __ASSET__assets_sounds_warp_ogg);
		type.set ("warp", AssetType.SOUND);
		className.set ("error", __ASSET__assets_sounds_error_ogg);
		type.set ("error", AssetType.SOUND);
		className.set ("flash", __ASSET__assets_sounds_flash_ogg);
		type.set ("flash", AssetType.SOUND);
		className.set ("break", __ASSET__assets_sounds_break_ogg);
		type.set ("break", AssetType.SOUND);
		className.set ("roar", __ASSET__assets_sounds_roar_ogg);
		type.set ("roar", AssetType.SOUND);
		className.set ("powerup", __ASSET__assets_sounds_powerup_ogg);
		type.set ("powerup", AssetType.SOUND);
		className.set ("chime", __ASSET__assets_sounds_chime_ogg);
		type.set ("chime", AssetType.SOUND);
		className.set ("unlock", __ASSET__assets_sounds_unlock_ogg);
		type.set ("unlock", AssetType.SOUND);
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		#elseif html5
		
		var id;
		id = "assets/data/achievement.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/achievement.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/deathtype.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/hint.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/message.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/nameentry.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/staffroll.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/statistics.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/stats.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/title.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/ansi/uitext.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/deathtype.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/hint.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/message.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/name/female.cpp";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/name/male.cpp";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/nameentry.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/staffroll.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/statistics.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/stats.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/title.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/uitext.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/achievement.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/deathtype.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/hint.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/message.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/nameentry.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/staffroll.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/statistics.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/stats.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/title.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/data/utf8/uitext.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/001.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/002.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/003.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/010.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/cursor.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/ending.cpp";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/ending.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/matatabi.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/message.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/opening.cpp";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/events/tileset1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset10.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset5.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset6.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset7.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset8.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/tileset9.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/events/window.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/font/fangzhengxiangsu14.ttf";
		className.set (id, __ASSET__assets_font_fangzhengxiangsu14_ttf);
		
		type.set (id, AssetType.FONT);
		id = "assets/font/font16x16.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/font/pixel.ttf";
		className.set (id, __ASSET__assets_font_pixel_ttf);
		
		type.set (id, AssetType.FONT);
		id = "assets/images/balloon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/cat.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/cursor.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/door.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/effect.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/heart.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/item.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/kira.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/arachne.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bat.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bear.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bee.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/beetle.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bird.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/boar.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/bull.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cat1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cat2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/centipede.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/chicken.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cockroach.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/cow.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crab_ground.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crab_water.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/crystal_golem.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dark_elf4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/doe.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dog1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dog2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/dummy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/earth_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/eel_ground.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/eel_water.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/empusa.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/evil_eye.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fairy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fire_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/floating_skull.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fly.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/frog.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/fungus.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gargoyle_fly.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gargoyle_walk.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gas_spore.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gelatinous_cube.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ghost.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ghoul.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gillman_ground.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gillman_water.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gnole1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gnole2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goat.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goatman1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goatman2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/goblin4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/golem.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/gorilla.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/grizzy_bear.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/hairy_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/harpy_fly.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/harpy_walk.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/homunculus.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/horse4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ice_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/imp.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/insectivorous_plant.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/insect_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/invader.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/iron_golem.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/jelly.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/jellyfish.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/legion.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lesser_fiend1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lesser_fiend2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/liche.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizard.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizardman1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/lizardman2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/magot.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mandragora.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mantis.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/medousa.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mindflayer.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/minotaur1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/minotaur2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mosquito.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/mummy.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/myconid.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/nightmare.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/octopus_ground.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/octopus_water.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ogre1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ogre2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/orc1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/orc2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/panther.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pig.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pillbug.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/poison_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/polar_bear.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/pumpkin_head.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/rat.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ratman1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/ratman2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/reaper.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/saber_tiger.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/scorpion.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/sea_serpent.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shadow_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/sheep.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shellfish.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/shrieker.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton_dog.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/skeleton_horse.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/slime.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/slug.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snail.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snake.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snake_man.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snow_panther.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/snow_wolf.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/soldier_ant.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/specter.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/spider.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/stag.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/succubus.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tentacle.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tick.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/tiger.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/toad.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vampire.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vine.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/vulture_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/water_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/werewolf.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wight.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wind_demon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wolf.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/worker_ant.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/worm.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wraith.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/wyvern.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/yeti.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/monster/zombie.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/a.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/b.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/background.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/down.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/left.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/right.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/pad/up.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/player.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/girl3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/result/kira.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/smoke.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/spike.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/tiles.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/bg.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud1.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud3.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/cloud4.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/title/sunbeam.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/arrow.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/armor.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/food.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/orb.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/potion.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/ring.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/scroll.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/wand.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/category/weapon.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/enemylog_cursor.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/frame32x256.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/itemcommand.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/itemlog_cursor.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/listitem.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/listitem2.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/message.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/messagetext.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/window200x100.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/images/ui/window624x74.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/000.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/001.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/002.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/003.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/004.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/005.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/006.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/007.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/008.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/009.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/010.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/011.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/012.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/013.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/014.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/015.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/016.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/017.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/018.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/019.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/020.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/021.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/022.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/023.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/024.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/025.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/026.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/027.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/028.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/029.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/030.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/031.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/032.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/033.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/034.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/035.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/036.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/037.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/038.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/039.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/040.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/041.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/042.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/043.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/044.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/045.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/046.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/047.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/048.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/049.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/050.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/500.tmx";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/enemy_nightmare.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_consumable.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/item_equipment.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/ansi/player.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/enemy_nightmare.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_consumable.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/item_equipment.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/player.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/tilenone.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/tileset.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "assets/levels/utf8/enemy.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/enemy_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/enemy_nightmare.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_appear.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_consumable.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/item_equipment.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/levels/utf8/player.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "assets/TemplateCSV/item_consumable.csv";
		path.set (id, id);
		
		type.set (id, AssetType.TEXT);
		id = "001";
		path.set (id, "assets/music/001.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "002";
		path.set (id, "assets/music/002.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "003";
		path.set (id, "assets/music/003.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "004";
		path.set (id, "assets/music/004.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "005";
		path.set (id, "assets/music/005.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "006";
		path.set (id, "assets/music/006.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "007";
		path.set (id, "assets/music/007.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "008";
		path.set (id, "assets/music/008.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "009";
		path.set (id, "assets/music/009.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "010";
		path.set (id, "assets/music/010.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "011";
		path.set (id, "assets/music/011.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "012";
		path.set (id, "assets/music/012.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "013";
		path.set (id, "assets/music/013.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "014";
		path.set (id, "assets/music/014.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "015";
		path.set (id, "assets/music/015.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "016";
		path.set (id, "assets/music/016.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "nightmare";
		path.set (id, "assets/music/nightmare.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "result";
		path.set (id, "assets/music/result.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "op1";
		path.set (id, "assets/music/op1.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "op2";
		path.set (id, "assets/music/op2.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "pickup";
		path.set (id, "assets/sounds/pickup2.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "foot";
		path.set (id, "assets/sounds/foot2.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "destroy";
		path.set (id, "assets/sounds/destroy.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "hit";
		path.set (id, "assets/sounds/hit.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "critical";
		path.set (id, "assets/sounds/hit4.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "eat";
		path.set (id, "assets/sounds/eat.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "enemy";
		path.set (id, "assets/sounds/enemy.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "equip";
		path.set (id, "assets/sounds/equip.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "put";
		path.set (id, "assets/sounds/put.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "avoid";
		path.set (id, "assets/sounds/avoid2.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "recover";
		path.set (id, "assets/sounds/recover.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "gameover";
		path.set (id, "assets/sounds/destroy2.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "menu";
		path.set (id, "assets/sounds/menu.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "pi";
		path.set (id, "assets/sounds/pi.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "hint";
		path.set (id, "assets/sounds/hint.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "coin";
		path.set (id, "assets/sounds/coin.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "levelup";
		path.set (id, "assets/sounds/levelup.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "badstatus";
		path.set (id, "assets/sounds/badstatus.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "warp";
		path.set (id, "assets/sounds/warp.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "error";
		path.set (id, "assets/sounds/error.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "flash";
		path.set (id, "assets/sounds/flash.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "break";
		path.set (id, "assets/sounds/break.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "roar";
		path.set (id, "assets/sounds/roar.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "powerup";
		path.set (id, "assets/sounds/powerup.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "chime";
		path.set (id, "assets/sounds/chime.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "unlock";
		path.set (id, "assets/sounds/unlock.ogg");
		
		type.set (id, AssetType.SOUND);
		id = "flixel/sounds/beep.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/sounds/flixel.ogg";
		path.set (id, id);
		
		type.set (id, AssetType.SOUND);
		id = "flixel/fonts/nokiafc22.ttf";
		className.set (id, __ASSET__flixel_fonts_nokiafc22_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/fonts/monsterrat.ttf";
		className.set (id, __ASSET__flixel_fonts_monsterrat_ttf);
		
		type.set (id, AssetType.FONT);
		id = "flixel/images/ui/button.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		id = "flixel/images/logo/default.png";
		path.set (id, id);
		
		type.set (id, AssetType.IMAGE);
		
		
		var assetsPrefix = null;
		if (ApplicationMain.config != null && Reflect.hasField (ApplicationMain.config, "assetsPrefix")) {
			assetsPrefix = ApplicationMain.config.assetsPrefix;
		}
		if (assetsPrefix != null) {
			for (k in path.keys()) {
				path.set(k, assetsPrefix + path[k]);
			}
		}
		
		#else
		
		#if (windows || mac || linux)
		
		var useManifest = false;
		
		className.set ("assets/data/achievement.csv", __ASSET__assets_data_achievement_csv);
		type.set ("assets/data/achievement.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/achievement.csv", __ASSET__assets_data_ansi_achievement_csv);
		type.set ("assets/data/ansi/achievement.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/deathtype.csv", __ASSET__assets_data_ansi_deathtype_csv);
		type.set ("assets/data/ansi/deathtype.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/hint.csv", __ASSET__assets_data_ansi_hint_csv);
		type.set ("assets/data/ansi/hint.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/message.csv", __ASSET__assets_data_ansi_message_csv);
		type.set ("assets/data/ansi/message.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/nameentry.csv", __ASSET__assets_data_ansi_nameentry_csv);
		type.set ("assets/data/ansi/nameentry.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/staffroll.csv", __ASSET__assets_data_ansi_staffroll_csv);
		type.set ("assets/data/ansi/staffroll.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/statistics.csv", __ASSET__assets_data_ansi_statistics_csv);
		type.set ("assets/data/ansi/statistics.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/stats.csv", __ASSET__assets_data_ansi_stats_csv);
		type.set ("assets/data/ansi/stats.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/title.csv", __ASSET__assets_data_ansi_title_csv);
		type.set ("assets/data/ansi/title.csv", AssetType.TEXT);
		
		className.set ("assets/data/ansi/uitext.csv", __ASSET__assets_data_ansi_uitext_csv);
		type.set ("assets/data/ansi/uitext.csv", AssetType.TEXT);
		
		className.set ("assets/data/deathtype.csv", __ASSET__assets_data_deathtype_csv);
		type.set ("assets/data/deathtype.csv", AssetType.TEXT);
		
		className.set ("assets/data/hint.csv", __ASSET__assets_data_hint_csv);
		type.set ("assets/data/hint.csv", AssetType.TEXT);
		
		className.set ("assets/data/message.csv", __ASSET__assets_data_message_csv);
		type.set ("assets/data/message.csv", AssetType.TEXT);
		
		className.set ("assets/data/name/female.cpp", __ASSET__assets_data_name_female_cpp);
		type.set ("assets/data/name/female.cpp", AssetType.TEXT);
		
		className.set ("assets/data/name/male.cpp", __ASSET__assets_data_name_male_cpp);
		type.set ("assets/data/name/male.cpp", AssetType.TEXT);
		
		className.set ("assets/data/nameentry.csv", __ASSET__assets_data_nameentry_csv);
		type.set ("assets/data/nameentry.csv", AssetType.TEXT);
		
		className.set ("assets/data/staffroll.csv", __ASSET__assets_data_staffroll_csv);
		type.set ("assets/data/staffroll.csv", AssetType.TEXT);
		
		className.set ("assets/data/statistics.csv", __ASSET__assets_data_statistics_csv);
		type.set ("assets/data/statistics.csv", AssetType.TEXT);
		
		className.set ("assets/data/stats.csv", __ASSET__assets_data_stats_csv);
		type.set ("assets/data/stats.csv", AssetType.TEXT);
		
		className.set ("assets/data/title.csv", __ASSET__assets_data_title_csv);
		type.set ("assets/data/title.csv", AssetType.TEXT);
		
		className.set ("assets/data/uitext.csv", __ASSET__assets_data_uitext_csv);
		type.set ("assets/data/uitext.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/achievement.csv", __ASSET__assets_data_utf8_achievement_csv);
		type.set ("assets/data/utf8/achievement.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/deathtype.csv", __ASSET__assets_data_utf8_deathtype_csv);
		type.set ("assets/data/utf8/deathtype.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/hint.csv", __ASSET__assets_data_utf8_hint_csv);
		type.set ("assets/data/utf8/hint.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/message.csv", __ASSET__assets_data_utf8_message_csv);
		type.set ("assets/data/utf8/message.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/nameentry.csv", __ASSET__assets_data_utf8_nameentry_csv);
		type.set ("assets/data/utf8/nameentry.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/staffroll.csv", __ASSET__assets_data_utf8_staffroll_csv);
		type.set ("assets/data/utf8/staffroll.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/statistics.csv", __ASSET__assets_data_utf8_statistics_csv);
		type.set ("assets/data/utf8/statistics.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/stats.csv", __ASSET__assets_data_utf8_stats_csv);
		type.set ("assets/data/utf8/stats.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/title.csv", __ASSET__assets_data_utf8_title_csv);
		type.set ("assets/data/utf8/title.csv", AssetType.TEXT);
		
		className.set ("assets/data/utf8/uitext.csv", __ASSET__assets_data_utf8_uitext_csv);
		type.set ("assets/data/utf8/uitext.csv", AssetType.TEXT);
		
		className.set ("assets/events/001.tmx", __ASSET__assets_events_001_tmx);
		type.set ("assets/events/001.tmx", AssetType.TEXT);
		
		className.set ("assets/events/002.tmx", __ASSET__assets_events_002_tmx);
		type.set ("assets/events/002.tmx", AssetType.TEXT);
		
		className.set ("assets/events/003.tmx", __ASSET__assets_events_003_tmx);
		type.set ("assets/events/003.tmx", AssetType.TEXT);
		
		className.set ("assets/events/010.tmx", __ASSET__assets_events_010_tmx);
		type.set ("assets/events/010.tmx", AssetType.TEXT);
		
		className.set ("assets/events/cursor.png", __ASSET__assets_events_cursor_png);
		type.set ("assets/events/cursor.png", AssetType.IMAGE);
		
		className.set ("assets/events/ending.cpp", __ASSET__assets_events_ending_cpp);
		type.set ("assets/events/ending.cpp", AssetType.TEXT);
		
		className.set ("assets/events/ending.png", __ASSET__assets_events_ending_png);
		type.set ("assets/events/ending.png", AssetType.IMAGE);
		
		className.set ("assets/events/matatabi.png", __ASSET__assets_events_matatabi_png);
		type.set ("assets/events/matatabi.png", AssetType.IMAGE);
		
		className.set ("assets/events/message.csv", __ASSET__assets_events_message_csv);
		type.set ("assets/events/message.csv", AssetType.TEXT);
		
		className.set ("assets/events/opening.cpp", __ASSET__assets_events_opening_cpp);
		type.set ("assets/events/opening.cpp", AssetType.TEXT);
		
		className.set ("assets/events/tileset1.png", __ASSET__assets_events_tileset1_png);
		type.set ("assets/events/tileset1.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset10.png", __ASSET__assets_events_tileset10_png);
		type.set ("assets/events/tileset10.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset2.png", __ASSET__assets_events_tileset2_png);
		type.set ("assets/events/tileset2.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset3.png", __ASSET__assets_events_tileset3_png);
		type.set ("assets/events/tileset3.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset4.png", __ASSET__assets_events_tileset4_png);
		type.set ("assets/events/tileset4.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset5.png", __ASSET__assets_events_tileset5_png);
		type.set ("assets/events/tileset5.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset6.png", __ASSET__assets_events_tileset6_png);
		type.set ("assets/events/tileset6.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset7.png", __ASSET__assets_events_tileset7_png);
		type.set ("assets/events/tileset7.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset8.png", __ASSET__assets_events_tileset8_png);
		type.set ("assets/events/tileset8.png", AssetType.IMAGE);
		
		className.set ("assets/events/tileset9.png", __ASSET__assets_events_tileset9_png);
		type.set ("assets/events/tileset9.png", AssetType.IMAGE);
		
		className.set ("assets/events/window.png", __ASSET__assets_events_window_png);
		type.set ("assets/events/window.png", AssetType.IMAGE);
		
		className.set ("assets/font/fangzhengxiangsu14.ttf", __ASSET__assets_font_fangzhengxiangsu14_ttf);
		type.set ("assets/font/fangzhengxiangsu14.ttf", AssetType.FONT);
		
		className.set ("assets/font/font16x16.png", __ASSET__assets_font_font16x16_png);
		type.set ("assets/font/font16x16.png", AssetType.IMAGE);
		
		className.set ("assets/font/pixel.ttf", __ASSET__assets_font_pixel_ttf);
		type.set ("assets/font/pixel.ttf", AssetType.FONT);
		
		className.set ("assets/images/balloon.png", __ASSET__assets_images_balloon_png);
		type.set ("assets/images/balloon.png", AssetType.IMAGE);
		
		className.set ("assets/images/cat.png", __ASSET__assets_images_cat_png);
		type.set ("assets/images/cat.png", AssetType.IMAGE);
		
		className.set ("assets/images/cursor.png", __ASSET__assets_images_cursor_png);
		type.set ("assets/images/cursor.png", AssetType.IMAGE);
		
		className.set ("assets/images/door.png", __ASSET__assets_images_door_png);
		type.set ("assets/images/door.png", AssetType.IMAGE);
		
		className.set ("assets/images/effect.png", __ASSET__assets_images_effect_png);
		type.set ("assets/images/effect.png", AssetType.IMAGE);
		
		className.set ("assets/images/heart.png", __ASSET__assets_images_heart_png);
		type.set ("assets/images/heart.png", AssetType.IMAGE);
		
		className.set ("assets/images/item.png", __ASSET__assets_images_item_png);
		type.set ("assets/images/item.png", AssetType.IMAGE);
		
		className.set ("assets/images/kira.png", __ASSET__assets_images_kira_png);
		type.set ("assets/images/kira.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/arachne.png", __ASSET__assets_images_monster_arachne_png);
		type.set ("assets/images/monster/arachne.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/bat.png", __ASSET__assets_images_monster_bat_png);
		type.set ("assets/images/monster/bat.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/bear.png", __ASSET__assets_images_monster_bear_png);
		type.set ("assets/images/monster/bear.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/bee.png", __ASSET__assets_images_monster_bee_png);
		type.set ("assets/images/monster/bee.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/beetle.png", __ASSET__assets_images_monster_beetle_png);
		type.set ("assets/images/monster/beetle.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/bird.png", __ASSET__assets_images_monster_bird_png);
		type.set ("assets/images/monster/bird.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/boar.png", __ASSET__assets_images_monster_boar_png);
		type.set ("assets/images/monster/boar.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/bull.png", __ASSET__assets_images_monster_bull_png);
		type.set ("assets/images/monster/bull.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/cat1.png", __ASSET__assets_images_monster_cat1_png);
		type.set ("assets/images/monster/cat1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/cat2.png", __ASSET__assets_images_monster_cat2_png);
		type.set ("assets/images/monster/cat2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/centipede.png", __ASSET__assets_images_monster_centipede_png);
		type.set ("assets/images/monster/centipede.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/chicken.png", __ASSET__assets_images_monster_chicken_png);
		type.set ("assets/images/monster/chicken.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/cockroach.png", __ASSET__assets_images_monster_cockroach_png);
		type.set ("assets/images/monster/cockroach.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/cow.png", __ASSET__assets_images_monster_cow_png);
		type.set ("assets/images/monster/cow.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/crab_ground.png", __ASSET__assets_images_monster_crab_ground_png);
		type.set ("assets/images/monster/crab_ground.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/crab_water.png", __ASSET__assets_images_monster_crab_water_png);
		type.set ("assets/images/monster/crab_water.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/crystal_golem.png", __ASSET__assets_images_monster_crystal_golem_png);
		type.set ("assets/images/monster/crystal_golem.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dark_elf1.png", __ASSET__assets_images_monster_dark_elf1_png);
		type.set ("assets/images/monster/dark_elf1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dark_elf2.png", __ASSET__assets_images_monster_dark_elf2_png);
		type.set ("assets/images/monster/dark_elf2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dark_elf3.png", __ASSET__assets_images_monster_dark_elf3_png);
		type.set ("assets/images/monster/dark_elf3.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dark_elf4.png", __ASSET__assets_images_monster_dark_elf4_png);
		type.set ("assets/images/monster/dark_elf4.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/doe.png", __ASSET__assets_images_monster_doe_png);
		type.set ("assets/images/monster/doe.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dog1.png", __ASSET__assets_images_monster_dog1_png);
		type.set ("assets/images/monster/dog1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dog2.png", __ASSET__assets_images_monster_dog2_png);
		type.set ("assets/images/monster/dog2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/dummy.png", __ASSET__assets_images_monster_dummy_png);
		type.set ("assets/images/monster/dummy.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/earth_demon.png", __ASSET__assets_images_monster_earth_demon_png);
		type.set ("assets/images/monster/earth_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/eel_ground.png", __ASSET__assets_images_monster_eel_ground_png);
		type.set ("assets/images/monster/eel_ground.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/eel_water.png", __ASSET__assets_images_monster_eel_water_png);
		type.set ("assets/images/monster/eel_water.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/empusa.png", __ASSET__assets_images_monster_empusa_png);
		type.set ("assets/images/monster/empusa.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/evil_eye.png", __ASSET__assets_images_monster_evil_eye_png);
		type.set ("assets/images/monster/evil_eye.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/fairy.png", __ASSET__assets_images_monster_fairy_png);
		type.set ("assets/images/monster/fairy.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/fire_demon.png", __ASSET__assets_images_monster_fire_demon_png);
		type.set ("assets/images/monster/fire_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/floating_skull.png", __ASSET__assets_images_monster_floating_skull_png);
		type.set ("assets/images/monster/floating_skull.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/fly.png", __ASSET__assets_images_monster_fly_png);
		type.set ("assets/images/monster/fly.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/frog.png", __ASSET__assets_images_monster_frog_png);
		type.set ("assets/images/monster/frog.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/fungus.png", __ASSET__assets_images_monster_fungus_png);
		type.set ("assets/images/monster/fungus.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gargoyle_fly.png", __ASSET__assets_images_monster_gargoyle_fly_png);
		type.set ("assets/images/monster/gargoyle_fly.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gargoyle_walk.png", __ASSET__assets_images_monster_gargoyle_walk_png);
		type.set ("assets/images/monster/gargoyle_walk.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gas_spore.png", __ASSET__assets_images_monster_gas_spore_png);
		type.set ("assets/images/monster/gas_spore.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gelatinous_cube.png", __ASSET__assets_images_monster_gelatinous_cube_png);
		type.set ("assets/images/monster/gelatinous_cube.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ghost.png", __ASSET__assets_images_monster_ghost_png);
		type.set ("assets/images/monster/ghost.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ghoul.png", __ASSET__assets_images_monster_ghoul_png);
		type.set ("assets/images/monster/ghoul.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gillman_ground.png", __ASSET__assets_images_monster_gillman_ground_png);
		type.set ("assets/images/monster/gillman_ground.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gillman_water.png", __ASSET__assets_images_monster_gillman_water_png);
		type.set ("assets/images/monster/gillman_water.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gnole1.png", __ASSET__assets_images_monster_gnole1_png);
		type.set ("assets/images/monster/gnole1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gnole2.png", __ASSET__assets_images_monster_gnole2_png);
		type.set ("assets/images/monster/gnole2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goat.png", __ASSET__assets_images_monster_goat_png);
		type.set ("assets/images/monster/goat.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goatman1.png", __ASSET__assets_images_monster_goatman1_png);
		type.set ("assets/images/monster/goatman1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goatman2.png", __ASSET__assets_images_monster_goatman2_png);
		type.set ("assets/images/monster/goatman2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goblin1.png", __ASSET__assets_images_monster_goblin1_png);
		type.set ("assets/images/monster/goblin1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goblin2.png", __ASSET__assets_images_monster_goblin2_png);
		type.set ("assets/images/monster/goblin2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goblin3.png", __ASSET__assets_images_monster_goblin3_png);
		type.set ("assets/images/monster/goblin3.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/goblin4.png", __ASSET__assets_images_monster_goblin4_png);
		type.set ("assets/images/monster/goblin4.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/golem.png", __ASSET__assets_images_monster_golem_png);
		type.set ("assets/images/monster/golem.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/gorilla.png", __ASSET__assets_images_monster_gorilla_png);
		type.set ("assets/images/monster/gorilla.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/grizzy_bear.png", __ASSET__assets_images_monster_grizzy_bear_png);
		type.set ("assets/images/monster/grizzy_bear.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/hairy_demon.png", __ASSET__assets_images_monster_hairy_demon_png);
		type.set ("assets/images/monster/hairy_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/harpy_fly.png", __ASSET__assets_images_monster_harpy_fly_png);
		type.set ("assets/images/monster/harpy_fly.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/harpy_walk.png", __ASSET__assets_images_monster_harpy_walk_png);
		type.set ("assets/images/monster/harpy_walk.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/homunculus.png", __ASSET__assets_images_monster_homunculus_png);
		type.set ("assets/images/monster/homunculus.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/horse1.png", __ASSET__assets_images_monster_horse1_png);
		type.set ("assets/images/monster/horse1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/horse2.png", __ASSET__assets_images_monster_horse2_png);
		type.set ("assets/images/monster/horse2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/horse3.png", __ASSET__assets_images_monster_horse3_png);
		type.set ("assets/images/monster/horse3.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/horse4.png", __ASSET__assets_images_monster_horse4_png);
		type.set ("assets/images/monster/horse4.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ice_demon.png", __ASSET__assets_images_monster_ice_demon_png);
		type.set ("assets/images/monster/ice_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/imp.png", __ASSET__assets_images_monster_imp_png);
		type.set ("assets/images/monster/imp.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/insectivorous_plant.png", __ASSET__assets_images_monster_insectivorous_plant_png);
		type.set ("assets/images/monster/insectivorous_plant.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/insect_demon.png", __ASSET__assets_images_monster_insect_demon_png);
		type.set ("assets/images/monster/insect_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/invader.png", __ASSET__assets_images_monster_invader_png);
		type.set ("assets/images/monster/invader.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/iron_golem.png", __ASSET__assets_images_monster_iron_golem_png);
		type.set ("assets/images/monster/iron_golem.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/jelly.png", __ASSET__assets_images_monster_jelly_png);
		type.set ("assets/images/monster/jelly.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/jellyfish.png", __ASSET__assets_images_monster_jellyfish_png);
		type.set ("assets/images/monster/jellyfish.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/legion.png", __ASSET__assets_images_monster_legion_png);
		type.set ("assets/images/monster/legion.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/lesser_fiend1.png", __ASSET__assets_images_monster_lesser_fiend1_png);
		type.set ("assets/images/monster/lesser_fiend1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/lesser_fiend2.png", __ASSET__assets_images_monster_lesser_fiend2_png);
		type.set ("assets/images/monster/lesser_fiend2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/liche.png", __ASSET__assets_images_monster_liche_png);
		type.set ("assets/images/monster/liche.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/lizard.png", __ASSET__assets_images_monster_lizard_png);
		type.set ("assets/images/monster/lizard.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/lizardman1.png", __ASSET__assets_images_monster_lizardman1_png);
		type.set ("assets/images/monster/lizardman1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/lizardman2.png", __ASSET__assets_images_monster_lizardman2_png);
		type.set ("assets/images/monster/lizardman2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/magot.png", __ASSET__assets_images_monster_magot_png);
		type.set ("assets/images/monster/magot.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/mandragora.png", __ASSET__assets_images_monster_mandragora_png);
		type.set ("assets/images/monster/mandragora.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/mantis.png", __ASSET__assets_images_monster_mantis_png);
		type.set ("assets/images/monster/mantis.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/medousa.png", __ASSET__assets_images_monster_medousa_png);
		type.set ("assets/images/monster/medousa.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/mindflayer.png", __ASSET__assets_images_monster_mindflayer_png);
		type.set ("assets/images/monster/mindflayer.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/minotaur1.png", __ASSET__assets_images_monster_minotaur1_png);
		type.set ("assets/images/monster/minotaur1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/minotaur2.png", __ASSET__assets_images_monster_minotaur2_png);
		type.set ("assets/images/monster/minotaur2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/mosquito.png", __ASSET__assets_images_monster_mosquito_png);
		type.set ("assets/images/monster/mosquito.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/mummy.png", __ASSET__assets_images_monster_mummy_png);
		type.set ("assets/images/monster/mummy.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/myconid.png", __ASSET__assets_images_monster_myconid_png);
		type.set ("assets/images/monster/myconid.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/nightmare.png", __ASSET__assets_images_monster_nightmare_png);
		type.set ("assets/images/monster/nightmare.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/octopus_ground.png", __ASSET__assets_images_monster_octopus_ground_png);
		type.set ("assets/images/monster/octopus_ground.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/octopus_water.png", __ASSET__assets_images_monster_octopus_water_png);
		type.set ("assets/images/monster/octopus_water.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ogre1.png", __ASSET__assets_images_monster_ogre1_png);
		type.set ("assets/images/monster/ogre1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ogre2.png", __ASSET__assets_images_monster_ogre2_png);
		type.set ("assets/images/monster/ogre2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/orc1.png", __ASSET__assets_images_monster_orc1_png);
		type.set ("assets/images/monster/orc1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/orc2.png", __ASSET__assets_images_monster_orc2_png);
		type.set ("assets/images/monster/orc2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/panther.png", __ASSET__assets_images_monster_panther_png);
		type.set ("assets/images/monster/panther.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/pig.png", __ASSET__assets_images_monster_pig_png);
		type.set ("assets/images/monster/pig.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/pillbug.png", __ASSET__assets_images_monster_pillbug_png);
		type.set ("assets/images/monster/pillbug.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/poison_demon.png", __ASSET__assets_images_monster_poison_demon_png);
		type.set ("assets/images/monster/poison_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/polar_bear.png", __ASSET__assets_images_monster_polar_bear_png);
		type.set ("assets/images/monster/polar_bear.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/pumpkin_head.png", __ASSET__assets_images_monster_pumpkin_head_png);
		type.set ("assets/images/monster/pumpkin_head.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/rat.png", __ASSET__assets_images_monster_rat_png);
		type.set ("assets/images/monster/rat.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ratman1.png", __ASSET__assets_images_monster_ratman1_png);
		type.set ("assets/images/monster/ratman1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/ratman2.png", __ASSET__assets_images_monster_ratman2_png);
		type.set ("assets/images/monster/ratman2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/reaper.png", __ASSET__assets_images_monster_reaper_png);
		type.set ("assets/images/monster/reaper.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/saber_tiger.png", __ASSET__assets_images_monster_saber_tiger_png);
		type.set ("assets/images/monster/saber_tiger.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/scorpion.png", __ASSET__assets_images_monster_scorpion_png);
		type.set ("assets/images/monster/scorpion.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/sea_serpent.png", __ASSET__assets_images_monster_sea_serpent_png);
		type.set ("assets/images/monster/sea_serpent.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/shadow_demon.png", __ASSET__assets_images_monster_shadow_demon_png);
		type.set ("assets/images/monster/shadow_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/sheep.png", __ASSET__assets_images_monster_sheep_png);
		type.set ("assets/images/monster/sheep.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/shellfish.png", __ASSET__assets_images_monster_shellfish_png);
		type.set ("assets/images/monster/shellfish.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/shrieker.png", __ASSET__assets_images_monster_shrieker_png);
		type.set ("assets/images/monster/shrieker.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/skeleton1.png", __ASSET__assets_images_monster_skeleton1_png);
		type.set ("assets/images/monster/skeleton1.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/skeleton2.png", __ASSET__assets_images_monster_skeleton2_png);
		type.set ("assets/images/monster/skeleton2.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/skeleton3.png", __ASSET__assets_images_monster_skeleton3_png);
		type.set ("assets/images/monster/skeleton3.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/skeleton_dog.png", __ASSET__assets_images_monster_skeleton_dog_png);
		type.set ("assets/images/monster/skeleton_dog.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/skeleton_horse.png", __ASSET__assets_images_monster_skeleton_horse_png);
		type.set ("assets/images/monster/skeleton_horse.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/slime.png", __ASSET__assets_images_monster_slime_png);
		type.set ("assets/images/monster/slime.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/slug.png", __ASSET__assets_images_monster_slug_png);
		type.set ("assets/images/monster/slug.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/snail.png", __ASSET__assets_images_monster_snail_png);
		type.set ("assets/images/monster/snail.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/snake.png", __ASSET__assets_images_monster_snake_png);
		type.set ("assets/images/monster/snake.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/snake_man.png", __ASSET__assets_images_monster_snake_man_png);
		type.set ("assets/images/monster/snake_man.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/snow_panther.png", __ASSET__assets_images_monster_snow_panther_png);
		type.set ("assets/images/monster/snow_panther.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/snow_wolf.png", __ASSET__assets_images_monster_snow_wolf_png);
		type.set ("assets/images/monster/snow_wolf.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/soldier_ant.png", __ASSET__assets_images_monster_soldier_ant_png);
		type.set ("assets/images/monster/soldier_ant.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/specter.png", __ASSET__assets_images_monster_specter_png);
		type.set ("assets/images/monster/specter.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/spider.png", __ASSET__assets_images_monster_spider_png);
		type.set ("assets/images/monster/spider.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/stag.png", __ASSET__assets_images_monster_stag_png);
		type.set ("assets/images/monster/stag.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/succubus.png", __ASSET__assets_images_monster_succubus_png);
		type.set ("assets/images/monster/succubus.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/tentacle.png", __ASSET__assets_images_monster_tentacle_png);
		type.set ("assets/images/monster/tentacle.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/tick.png", __ASSET__assets_images_monster_tick_png);
		type.set ("assets/images/monster/tick.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/tiger.png", __ASSET__assets_images_monster_tiger_png);
		type.set ("assets/images/monster/tiger.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/toad.png", __ASSET__assets_images_monster_toad_png);
		type.set ("assets/images/monster/toad.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/vampire.png", __ASSET__assets_images_monster_vampire_png);
		type.set ("assets/images/monster/vampire.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/vine.png", __ASSET__assets_images_monster_vine_png);
		type.set ("assets/images/monster/vine.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/vulture_demon.png", __ASSET__assets_images_monster_vulture_demon_png);
		type.set ("assets/images/monster/vulture_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/water_demon.png", __ASSET__assets_images_monster_water_demon_png);
		type.set ("assets/images/monster/water_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/werewolf.png", __ASSET__assets_images_monster_werewolf_png);
		type.set ("assets/images/monster/werewolf.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/wight.png", __ASSET__assets_images_monster_wight_png);
		type.set ("assets/images/monster/wight.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/wind_demon.png", __ASSET__assets_images_monster_wind_demon_png);
		type.set ("assets/images/monster/wind_demon.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/wolf.png", __ASSET__assets_images_monster_wolf_png);
		type.set ("assets/images/monster/wolf.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/worker_ant.png", __ASSET__assets_images_monster_worker_ant_png);
		type.set ("assets/images/monster/worker_ant.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/worm.png", __ASSET__assets_images_monster_worm_png);
		type.set ("assets/images/monster/worm.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/wraith.png", __ASSET__assets_images_monster_wraith_png);
		type.set ("assets/images/monster/wraith.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/wyvern.png", __ASSET__assets_images_monster_wyvern_png);
		type.set ("assets/images/monster/wyvern.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/yeti.png", __ASSET__assets_images_monster_yeti_png);
		type.set ("assets/images/monster/yeti.png", AssetType.IMAGE);
		
		className.set ("assets/images/monster/zombie.png", __ASSET__assets_images_monster_zombie_png);
		type.set ("assets/images/monster/zombie.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/a.png", __ASSET__assets_images_pad_a_png);
		type.set ("assets/images/pad/a.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/b.png", __ASSET__assets_images_pad_b_png);
		type.set ("assets/images/pad/b.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/background.png", __ASSET__assets_images_pad_background_png);
		type.set ("assets/images/pad/background.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/down.png", __ASSET__assets_images_pad_down_png);
		type.set ("assets/images/pad/down.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/left.png", __ASSET__assets_images_pad_left_png);
		type.set ("assets/images/pad/left.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/right.png", __ASSET__assets_images_pad_right_png);
		type.set ("assets/images/pad/right.png", AssetType.IMAGE);
		
		className.set ("assets/images/pad/up.png", __ASSET__assets_images_pad_up_png);
		type.set ("assets/images/pad/up.png", AssetType.IMAGE);
		
		className.set ("assets/images/player.png", __ASSET__assets_images_player_png);
		type.set ("assets/images/player.png", AssetType.IMAGE);
		
		className.set ("assets/images/result/girl.png", __ASSET__assets_images_result_girl_png);
		type.set ("assets/images/result/girl.png", AssetType.IMAGE);
		
		className.set ("assets/images/result/girl2.png", __ASSET__assets_images_result_girl2_png);
		type.set ("assets/images/result/girl2.png", AssetType.IMAGE);
		
		className.set ("assets/images/result/girl3.png", __ASSET__assets_images_result_girl3_png);
		type.set ("assets/images/result/girl3.png", AssetType.IMAGE);
		
		className.set ("assets/images/result/kira.png", __ASSET__assets_images_result_kira_png);
		type.set ("assets/images/result/kira.png", AssetType.IMAGE);
		
		className.set ("assets/images/smoke.png", __ASSET__assets_images_smoke_png);
		type.set ("assets/images/smoke.png", AssetType.IMAGE);
		
		className.set ("assets/images/spike.png", __ASSET__assets_images_spike_png);
		type.set ("assets/images/spike.png", AssetType.IMAGE);
		
		className.set ("assets/images/tiles.png", __ASSET__assets_images_tiles_png);
		type.set ("assets/images/tiles.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/bg.png", __ASSET__assets_images_title_bg_png);
		type.set ("assets/images/title/bg.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/cloud1.png", __ASSET__assets_images_title_cloud1_png);
		type.set ("assets/images/title/cloud1.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/cloud2.png", __ASSET__assets_images_title_cloud2_png);
		type.set ("assets/images/title/cloud2.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/cloud3.png", __ASSET__assets_images_title_cloud3_png);
		type.set ("assets/images/title/cloud3.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/cloud4.png", __ASSET__assets_images_title_cloud4_png);
		type.set ("assets/images/title/cloud4.png", AssetType.IMAGE);
		
		className.set ("assets/images/title/sunbeam.png", __ASSET__assets_images_title_sunbeam_png);
		type.set ("assets/images/title/sunbeam.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/arrow.png", __ASSET__assets_images_ui_arrow_png);
		type.set ("assets/images/ui/arrow.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/armor.png", __ASSET__assets_images_ui_category_armor_png);
		type.set ("assets/images/ui/category/armor.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/food.png", __ASSET__assets_images_ui_category_food_png);
		type.set ("assets/images/ui/category/food.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/orb.png", __ASSET__assets_images_ui_category_orb_png);
		type.set ("assets/images/ui/category/orb.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/potion.png", __ASSET__assets_images_ui_category_potion_png);
		type.set ("assets/images/ui/category/potion.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/ring.png", __ASSET__assets_images_ui_category_ring_png);
		type.set ("assets/images/ui/category/ring.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/scroll.png", __ASSET__assets_images_ui_category_scroll_png);
		type.set ("assets/images/ui/category/scroll.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/wand.png", __ASSET__assets_images_ui_category_wand_png);
		type.set ("assets/images/ui/category/wand.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/category/weapon.png", __ASSET__assets_images_ui_category_weapon_png);
		type.set ("assets/images/ui/category/weapon.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/enemylog_cursor.png", __ASSET__assets_images_ui_enemylog_cursor_png);
		type.set ("assets/images/ui/enemylog_cursor.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/frame32x256.png", __ASSET__assets_images_ui_frame32x256_png);
		type.set ("assets/images/ui/frame32x256.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/itemcommand.png", __ASSET__assets_images_ui_itemcommand_png);
		type.set ("assets/images/ui/itemcommand.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/itemlog_cursor.png", __ASSET__assets_images_ui_itemlog_cursor_png);
		type.set ("assets/images/ui/itemlog_cursor.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/listitem.png", __ASSET__assets_images_ui_listitem_png);
		type.set ("assets/images/ui/listitem.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/listitem2.png", __ASSET__assets_images_ui_listitem2_png);
		type.set ("assets/images/ui/listitem2.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/message.png", __ASSET__assets_images_ui_message_png);
		type.set ("assets/images/ui/message.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/messagetext.png", __ASSET__assets_images_ui_messagetext_png);
		type.set ("assets/images/ui/messagetext.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/window200x100.png", __ASSET__assets_images_ui_window200x100_png);
		type.set ("assets/images/ui/window200x100.png", AssetType.IMAGE);
		
		className.set ("assets/images/ui/window624x74.png", __ASSET__assets_images_ui_window624x74_png);
		type.set ("assets/images/ui/window624x74.png", AssetType.IMAGE);
		
		className.set ("assets/levels/000.tmx", __ASSET__assets_levels_000_tmx);
		type.set ("assets/levels/000.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/001.tmx", __ASSET__assets_levels_001_tmx);
		type.set ("assets/levels/001.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/002.tmx", __ASSET__assets_levels_002_tmx);
		type.set ("assets/levels/002.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/003.tmx", __ASSET__assets_levels_003_tmx);
		type.set ("assets/levels/003.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/004.tmx", __ASSET__assets_levels_004_tmx);
		type.set ("assets/levels/004.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/005.tmx", __ASSET__assets_levels_005_tmx);
		type.set ("assets/levels/005.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/006.tmx", __ASSET__assets_levels_006_tmx);
		type.set ("assets/levels/006.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/007.tmx", __ASSET__assets_levels_007_tmx);
		type.set ("assets/levels/007.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/008.tmx", __ASSET__assets_levels_008_tmx);
		type.set ("assets/levels/008.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/009.tmx", __ASSET__assets_levels_009_tmx);
		type.set ("assets/levels/009.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/010.tmx", __ASSET__assets_levels_010_tmx);
		type.set ("assets/levels/010.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/011.tmx", __ASSET__assets_levels_011_tmx);
		type.set ("assets/levels/011.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/012.tmx", __ASSET__assets_levels_012_tmx);
		type.set ("assets/levels/012.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/013.tmx", __ASSET__assets_levels_013_tmx);
		type.set ("assets/levels/013.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/014.tmx", __ASSET__assets_levels_014_tmx);
		type.set ("assets/levels/014.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/015.tmx", __ASSET__assets_levels_015_tmx);
		type.set ("assets/levels/015.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/016.tmx", __ASSET__assets_levels_016_tmx);
		type.set ("assets/levels/016.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/017.tmx", __ASSET__assets_levels_017_tmx);
		type.set ("assets/levels/017.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/018.tmx", __ASSET__assets_levels_018_tmx);
		type.set ("assets/levels/018.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/019.tmx", __ASSET__assets_levels_019_tmx);
		type.set ("assets/levels/019.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/020.tmx", __ASSET__assets_levels_020_tmx);
		type.set ("assets/levels/020.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/021.tmx", __ASSET__assets_levels_021_tmx);
		type.set ("assets/levels/021.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/022.tmx", __ASSET__assets_levels_022_tmx);
		type.set ("assets/levels/022.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/023.tmx", __ASSET__assets_levels_023_tmx);
		type.set ("assets/levels/023.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/024.tmx", __ASSET__assets_levels_024_tmx);
		type.set ("assets/levels/024.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/025.tmx", __ASSET__assets_levels_025_tmx);
		type.set ("assets/levels/025.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/026.tmx", __ASSET__assets_levels_026_tmx);
		type.set ("assets/levels/026.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/027.tmx", __ASSET__assets_levels_027_tmx);
		type.set ("assets/levels/027.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/028.tmx", __ASSET__assets_levels_028_tmx);
		type.set ("assets/levels/028.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/029.tmx", __ASSET__assets_levels_029_tmx);
		type.set ("assets/levels/029.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/030.tmx", __ASSET__assets_levels_030_tmx);
		type.set ("assets/levels/030.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/031.tmx", __ASSET__assets_levels_031_tmx);
		type.set ("assets/levels/031.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/032.tmx", __ASSET__assets_levels_032_tmx);
		type.set ("assets/levels/032.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/033.tmx", __ASSET__assets_levels_033_tmx);
		type.set ("assets/levels/033.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/034.tmx", __ASSET__assets_levels_034_tmx);
		type.set ("assets/levels/034.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/035.tmx", __ASSET__assets_levels_035_tmx);
		type.set ("assets/levels/035.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/036.tmx", __ASSET__assets_levels_036_tmx);
		type.set ("assets/levels/036.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/037.tmx", __ASSET__assets_levels_037_tmx);
		type.set ("assets/levels/037.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/038.tmx", __ASSET__assets_levels_038_tmx);
		type.set ("assets/levels/038.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/039.tmx", __ASSET__assets_levels_039_tmx);
		type.set ("assets/levels/039.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/040.tmx", __ASSET__assets_levels_040_tmx);
		type.set ("assets/levels/040.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/041.tmx", __ASSET__assets_levels_041_tmx);
		type.set ("assets/levels/041.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/042.tmx", __ASSET__assets_levels_042_tmx);
		type.set ("assets/levels/042.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/043.tmx", __ASSET__assets_levels_043_tmx);
		type.set ("assets/levels/043.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/044.tmx", __ASSET__assets_levels_044_tmx);
		type.set ("assets/levels/044.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/045.tmx", __ASSET__assets_levels_045_tmx);
		type.set ("assets/levels/045.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/046.tmx", __ASSET__assets_levels_046_tmx);
		type.set ("assets/levels/046.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/047.tmx", __ASSET__assets_levels_047_tmx);
		type.set ("assets/levels/047.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/048.tmx", __ASSET__assets_levels_048_tmx);
		type.set ("assets/levels/048.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/049.tmx", __ASSET__assets_levels_049_tmx);
		type.set ("assets/levels/049.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/050.tmx", __ASSET__assets_levels_050_tmx);
		type.set ("assets/levels/050.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/500.tmx", __ASSET__assets_levels_500_tmx);
		type.set ("assets/levels/500.tmx", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/enemy.csv", __ASSET__assets_levels_ansi_enemy_csv);
		type.set ("assets/levels/ansi/enemy.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/enemy_appear.csv", __ASSET__assets_levels_ansi_enemy_appear_csv);
		type.set ("assets/levels/ansi/enemy_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/enemy_nightmare.csv", __ASSET__assets_levels_ansi_enemy_nightmare_csv);
		type.set ("assets/levels/ansi/enemy_nightmare.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/item_appear.csv", __ASSET__assets_levels_ansi_item_appear_csv);
		type.set ("assets/levels/ansi/item_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/item_consumable.csv", __ASSET__assets_levels_ansi_item_consumable_csv);
		type.set ("assets/levels/ansi/item_consumable.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/item_equipment.csv", __ASSET__assets_levels_ansi_item_equipment_csv);
		type.set ("assets/levels/ansi/item_equipment.csv", AssetType.TEXT);
		
		className.set ("assets/levels/ansi/player.csv", __ASSET__assets_levels_ansi_player_csv);
		type.set ("assets/levels/ansi/player.csv", AssetType.TEXT);
		
		className.set ("assets/levels/enemy.csv", __ASSET__assets_levels_enemy_csv);
		type.set ("assets/levels/enemy.csv", AssetType.TEXT);
		
		className.set ("assets/levels/enemy_appear.csv", __ASSET__assets_levels_enemy_appear_csv);
		type.set ("assets/levels/enemy_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/enemy_nightmare.csv", __ASSET__assets_levels_enemy_nightmare_csv);
		type.set ("assets/levels/enemy_nightmare.csv", AssetType.TEXT);
		
		className.set ("assets/levels/item_appear.csv", __ASSET__assets_levels_item_appear_csv);
		type.set ("assets/levels/item_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/item_consumable.csv", __ASSET__assets_levels_item_consumable_csv);
		type.set ("assets/levels/item_consumable.csv", AssetType.TEXT);
		
		className.set ("assets/levels/item_equipment.csv", __ASSET__assets_levels_item_equipment_csv);
		type.set ("assets/levels/item_equipment.csv", AssetType.TEXT);
		
		className.set ("assets/levels/player.csv", __ASSET__assets_levels_player_csv);
		type.set ("assets/levels/player.csv", AssetType.TEXT);
		
		className.set ("assets/levels/tilenone.png", __ASSET__assets_levels_tilenone_png);
		type.set ("assets/levels/tilenone.png", AssetType.IMAGE);
		
		className.set ("assets/levels/tileset.png", __ASSET__assets_levels_tileset_png);
		type.set ("assets/levels/tileset.png", AssetType.IMAGE);
		
		className.set ("assets/levels/utf8/enemy.csv", __ASSET__assets_levels_utf8_enemy_csv);
		type.set ("assets/levels/utf8/enemy.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/enemy_appear.csv", __ASSET__assets_levels_utf8_enemy_appear_csv);
		type.set ("assets/levels/utf8/enemy_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/enemy_nightmare.csv", __ASSET__assets_levels_utf8_enemy_nightmare_csv);
		type.set ("assets/levels/utf8/enemy_nightmare.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/item_appear.csv", __ASSET__assets_levels_utf8_item_appear_csv);
		type.set ("assets/levels/utf8/item_appear.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/item_consumable.csv", __ASSET__assets_levels_utf8_item_consumable_csv);
		type.set ("assets/levels/utf8/item_consumable.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/item_equipment.csv", __ASSET__assets_levels_utf8_item_equipment_csv);
		type.set ("assets/levels/utf8/item_equipment.csv", AssetType.TEXT);
		
		className.set ("assets/levels/utf8/player.csv", __ASSET__assets_levels_utf8_player_csv);
		type.set ("assets/levels/utf8/player.csv", AssetType.TEXT);
		
		className.set ("assets/TemplateCSV/item_consumable.csv", __ASSET__assets_templatecsv_item_consumable_csv);
		type.set ("assets/TemplateCSV/item_consumable.csv", AssetType.TEXT);
		
		className.set ("001", __ASSET__assets_music_001_ogg);
		type.set ("001", AssetType.SOUND);
		
		className.set ("002", __ASSET__assets_music_002_ogg);
		type.set ("002", AssetType.SOUND);
		
		className.set ("003", __ASSET__assets_music_003_ogg);
		type.set ("003", AssetType.SOUND);
		
		className.set ("004", __ASSET__assets_music_004_ogg);
		type.set ("004", AssetType.SOUND);
		
		className.set ("005", __ASSET__assets_music_005_ogg);
		type.set ("005", AssetType.SOUND);
		
		className.set ("006", __ASSET__assets_music_006_ogg);
		type.set ("006", AssetType.SOUND);
		
		className.set ("007", __ASSET__assets_music_007_ogg);
		type.set ("007", AssetType.SOUND);
		
		className.set ("008", __ASSET__assets_music_008_ogg);
		type.set ("008", AssetType.SOUND);
		
		className.set ("009", __ASSET__assets_music_009_ogg);
		type.set ("009", AssetType.SOUND);
		
		className.set ("010", __ASSET__assets_music_010_ogg);
		type.set ("010", AssetType.SOUND);
		
		className.set ("011", __ASSET__assets_music_011_ogg);
		type.set ("011", AssetType.SOUND);
		
		className.set ("012", __ASSET__assets_music_012_ogg);
		type.set ("012", AssetType.SOUND);
		
		className.set ("013", __ASSET__assets_music_013_ogg);
		type.set ("013", AssetType.SOUND);
		
		className.set ("014", __ASSET__assets_music_014_ogg);
		type.set ("014", AssetType.SOUND);
		
		className.set ("015", __ASSET__assets_music_015_ogg);
		type.set ("015", AssetType.SOUND);
		
		className.set ("016", __ASSET__assets_music_016_ogg);
		type.set ("016", AssetType.SOUND);
		
		className.set ("nightmare", __ASSET__assets_music_nightmare_ogg);
		type.set ("nightmare", AssetType.SOUND);
		
		className.set ("result", __ASSET__assets_music_result_ogg);
		type.set ("result", AssetType.SOUND);
		
		className.set ("op1", __ASSET__assets_music_op1_ogg);
		type.set ("op1", AssetType.SOUND);
		
		className.set ("op2", __ASSET__assets_music_op2_ogg);
		type.set ("op2", AssetType.SOUND);
		
		className.set ("pickup", __ASSET__assets_sounds_pickup2_ogg);
		type.set ("pickup", AssetType.SOUND);
		
		className.set ("foot", __ASSET__assets_sounds_foot2_ogg);
		type.set ("foot", AssetType.SOUND);
		
		className.set ("destroy", __ASSET__assets_sounds_destroy_ogg);
		type.set ("destroy", AssetType.SOUND);
		
		className.set ("hit", __ASSET__assets_sounds_hit_ogg);
		type.set ("hit", AssetType.SOUND);
		
		className.set ("critical", __ASSET__assets_sounds_hit4_ogg);
		type.set ("critical", AssetType.SOUND);
		
		className.set ("eat", __ASSET__assets_sounds_eat_ogg);
		type.set ("eat", AssetType.SOUND);
		
		className.set ("enemy", __ASSET__assets_sounds_enemy_ogg);
		type.set ("enemy", AssetType.SOUND);
		
		className.set ("equip", __ASSET__assets_sounds_equip_ogg);
		type.set ("equip", AssetType.SOUND);
		
		className.set ("put", __ASSET__assets_sounds_put_ogg);
		type.set ("put", AssetType.SOUND);
		
		className.set ("avoid", __ASSET__assets_sounds_avoid2_ogg);
		type.set ("avoid", AssetType.SOUND);
		
		className.set ("recover", __ASSET__assets_sounds_recover_ogg);
		type.set ("recover", AssetType.SOUND);
		
		className.set ("gameover", __ASSET__assets_sounds_destroy2_ogg);
		type.set ("gameover", AssetType.SOUND);
		
		className.set ("menu", __ASSET__assets_sounds_menu_ogg);
		type.set ("menu", AssetType.SOUND);
		
		className.set ("pi", __ASSET__assets_sounds_pi_ogg);
		type.set ("pi", AssetType.SOUND);
		
		className.set ("hint", __ASSET__assets_sounds_hint_ogg);
		type.set ("hint", AssetType.SOUND);
		
		className.set ("coin", __ASSET__assets_sounds_coin_ogg);
		type.set ("coin", AssetType.SOUND);
		
		className.set ("levelup", __ASSET__assets_sounds_levelup_ogg);
		type.set ("levelup", AssetType.SOUND);
		
		className.set ("badstatus", __ASSET__assets_sounds_badstatus_ogg);
		type.set ("badstatus", AssetType.SOUND);
		
		className.set ("warp", __ASSET__assets_sounds_warp_ogg);
		type.set ("warp", AssetType.SOUND);
		
		className.set ("error", __ASSET__assets_sounds_error_ogg);
		type.set ("error", AssetType.SOUND);
		
		className.set ("flash", __ASSET__assets_sounds_flash_ogg);
		type.set ("flash", AssetType.SOUND);
		
		className.set ("break", __ASSET__assets_sounds_break_ogg);
		type.set ("break", AssetType.SOUND);
		
		className.set ("roar", __ASSET__assets_sounds_roar_ogg);
		type.set ("roar", AssetType.SOUND);
		
		className.set ("powerup", __ASSET__assets_sounds_powerup_ogg);
		type.set ("powerup", AssetType.SOUND);
		
		className.set ("chime", __ASSET__assets_sounds_chime_ogg);
		type.set ("chime", AssetType.SOUND);
		
		className.set ("unlock", __ASSET__assets_sounds_unlock_ogg);
		type.set ("unlock", AssetType.SOUND);
		
		className.set ("flixel/sounds/beep.ogg", __ASSET__flixel_sounds_beep_ogg);
		type.set ("flixel/sounds/beep.ogg", AssetType.SOUND);
		
		className.set ("flixel/sounds/flixel.ogg", __ASSET__flixel_sounds_flixel_ogg);
		type.set ("flixel/sounds/flixel.ogg", AssetType.SOUND);
		
		className.set ("flixel/fonts/nokiafc22.ttf", __ASSET__flixel_fonts_nokiafc22_ttf);
		type.set ("flixel/fonts/nokiafc22.ttf", AssetType.FONT);
		
		className.set ("flixel/fonts/monsterrat.ttf", __ASSET__flixel_fonts_monsterrat_ttf);
		type.set ("flixel/fonts/monsterrat.ttf", AssetType.FONT);
		
		className.set ("flixel/images/ui/button.png", __ASSET__flixel_images_ui_button_png);
		type.set ("flixel/images/ui/button.png", AssetType.IMAGE);
		
		className.set ("flixel/images/logo/default.png", __ASSET__flixel_images_logo_default_png);
		type.set ("flixel/images/logo/default.png", AssetType.IMAGE);
		
		
		if (useManifest) {
			
			loadManifest ();
			
			if (Sys.args ().indexOf ("-livereload") > -1) {
				
				var path = FileSystem.fullPath ("manifest");
				lastModified = FileSystem.stat (path).mtime.getTime ();
				
				timer = new Timer (2000);
				timer.run = function () {
					
					var modified = FileSystem.stat (path).mtime.getTime ();
					
					if (modified > lastModified) {
						
						lastModified = modified;
						loadManifest ();
						
						onChange.dispatch ();
						
					}
					
				}
				
			}
			
		}
		
		#else
		
		loadManifest ();
		
		#end
		#end
		
	}
	
	
	public override function exists (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var assetType = this.type.get (id);
		
		if (assetType != null) {
			
			if (assetType == requestedType || ((requestedType == SOUND || requestedType == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if (requestedType == BINARY && (assetType == BINARY || assetType == TEXT || assetType == IMAGE)) {
				
				return true;
				
			} else if (requestedType == TEXT && assetType == BINARY) {
				
				return true;
				
			} else if (requestedType == null || path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (requestedType == BINARY || requestedType == null || (assetType == BINARY && requestedType == TEXT)) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getAudioBuffer (id:String):AudioBuffer {
		
		#if flash
		
		var buffer = new AudioBuffer ();
		buffer.src = cast (Type.createInstance (className.get (id), []), Sound);
		return buffer;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		if (className.exists(id)) return AudioBuffer.fromBytes (cast (Type.createInstance (className.get (id), []), Bytes));
		else return AudioBuffer.fromFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):Bytes {
		
		#if flash
		
		switch (type.get (id)) {
			
			case TEXT, BINARY:
				
				return Bytes.ofData (cast (Type.createInstance (className.get (id), []), flash.utils.ByteArray));
			
			case IMAGE:
				
				var bitmapData = cast (Type.createInstance (className.get (id), []), BitmapData);
				return Bytes.ofData (bitmapData.getPixels (bitmapData.rect));
			
			default:
				
				return null;
			
		}
		
		return cast (Type.createInstance (className.get (id), []), Bytes);
		
		#elseif html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Bytes);
		else return Bytes.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if flash
		
		var src = Type.createInstance (className.get (id), []);
		
		var font = new Font (src.fontName);
		font.src = src;
		return font;
		
		#elseif html5
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Font);
			
		} else {
			
			return Font.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	public override function getImage (id:String):Image {
		
		#if flash
		
		return Image.fromBitmapData (cast (Type.createInstance (className.get (id), []), BitmapData));
		
		#elseif html5
		
		return Image.fromImageElement (Preloader.images.get (path.get (id)));
		
		#else
		
		if (className.exists (id)) {
			
			var fontClass = className.get (id);
			return cast (Type.createInstance (fontClass, []), Image);
			
		} else {
			
			return Image.fromFile (path.get (id));
			
		}
		
		#end
		
	}
	
	
	/*public override function getMusic (id:String):Dynamic {
		
		#if flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif openfl_html5
		
		//var sound = new Sound ();
		//sound.__buffer = true;
		//sound.load (new URLRequest (path.get (id)));
		//return sound;
		return null;
		
		#elseif html5
		
		return null;
		//return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return null;
		//if (className.exists(id)) return cast (Type.createInstance (className.get (id), []), Sound);
		//else return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}*/
	
	
	public override function getPath (id:String):String {
		
		//#if ios
		
		//return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		//#else
		
		return path.get (id);
		
		//#end
		
	}
	
	
	public override function getText (id:String):String {
		
		#if html5
		
		var loader = Preloader.loaders.get (path.get (id));
		
		if (loader == null) {
			
			return null;
			
		}
		
		var bytes = loader.bytes;
		
		if (bytes != null) {
			
			return bytes.getString (0, bytes.length);
			
		} else {
			
			return null;
		}
		
		#else
		
		var bytes = getBytes (id);
		
		if (bytes == null) {
			
			return null;
			
		} else {
			
			return bytes.getString (0, bytes.length);
			
		}
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:String):Bool {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		
		#if flash
		
		//if (requestedType != AssetType.MUSIC && requestedType != AssetType.SOUND) {
			
			return className.exists (id);
			
		//}
		
		#end
		
		return true;
		
	}
	
	
	public override function list (type:String):Array<String> {
		
		var requestedType = type != null ? cast (type, AssetType) : null;
		var items = [];
		
		for (id in this.type.keys ()) {
			
			if (requestedType == null || exists (id, type)) {
				
				items.push (id);
				
			}
			
		}
		
		return items;
		
	}
	
	
	public override function loadAudioBuffer (id:String):Future<AudioBuffer> {
		
		var promise = new Promise<AudioBuffer> ();
		
		#if (flash)
		
		if (path.exists (id)) {
			
			var soundLoader = new Sound ();
			soundLoader.addEventListener (Event.COMPLETE, function (event) {
				
				var audioBuffer:AudioBuffer = new AudioBuffer();
				audioBuffer.src = event.currentTarget;
				promise.complete (audioBuffer);
				
			});
			soundLoader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			soundLoader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			soundLoader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getAudioBuffer (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<AudioBuffer> (function () return getAudioBuffer (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadBytes (id:String):Future<Bytes> {
		
		var promise = new Promise<Bytes> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.dataFormat = flash.net.URLLoaderDataFormat.BINARY;
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = Bytes.ofData (event.currentTarget.data);
				promise.complete (bytes);
				
			});
			loader.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			promise.completeWith (request.load (path.get (id) + "?" + Assets.cache.version));
			
		} else {
			
			promise.complete (getBytes (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Bytes> (function () return getBytes (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	public override function loadImage (id:String):Future<Image> {
		
		var promise = new Promise<Image> ();
		
		#if flash
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bitmapData = cast (event.currentTarget.content, Bitmap).bitmapData;
				promise.complete (Image.fromBitmapData (bitmapData));
				
			});
			loader.contentLoaderInfo.addEventListener (ProgressEvent.PROGRESS, function (event) {
				
				if (event.bytesTotal == 0) {
					
					promise.progress (0);
					
				} else {
					
					promise.progress (event.bytesLoaded / event.bytesTotal);
					
				}
				
			});
			loader.contentLoaderInfo.addEventListener (IOErrorEvent.IO_ERROR, promise.error);
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#elseif html5
		
		if (path.exists (id)) {
			
			var image = new js.html.Image ();
			image.onload = function (_):Void {
				
				promise.complete (Image.fromImageElement (image));
				
			}
			image.onerror = promise.error;
			image.src = path.get (id) + "?" + Assets.cache.version;
			
		} else {
			
			promise.complete (getImage (id));
			
		}
		
		#else
		
		promise.completeWith (new Future<Image> (function () return getImage (id)));
		
		#end
		
		return promise.future;
		
	}
	
	
	#if (!flash && !html5)
	private function loadManifest ():Void {
		
		try {
			
			#if blackberry
			var bytes = Bytes.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = Bytes.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = Bytes.readFile ("assets/manifest");
			#elseif (mac && java)
			var bytes = Bytes.readFile ("../Resources/manifest");
			#elseif (ios || tvos)
			var bytes = Bytes.readFile ("assets/manifest");
			#else
			var bytes = Bytes.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				if (bytes.length > 0) {
					
					var data = bytes.getString (0, bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<Dynamic> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							if (!className.exists (asset.id)) {
								
								#if (ios || tvos)
								path.set (asset.id, "assets/" + asset.path);
								#else
								path.set (asset.id, asset.path);
								#end
								type.set (asset.id, cast (asset.type, AssetType));
								
							}
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest (bytes was null)");
				
			}
		
		} catch (e:Dynamic) {
			
			trace ('Warning: Could not load asset manifest (${e})');
			
		}
		
	}
	#end
	
	
	public override function loadText (id:String):Future<String> {
		
		var promise = new Promise<String> ();
		
		#if html5
		
		if (path.exists (id)) {
			
			var request = new HTTPRequest ();
			var future = request.load (path.get (id) + "?" + Assets.cache.version);
			future.onProgress (function (progress) promise.progress (progress));
			future.onError (function (msg) promise.error (msg));
			future.onComplete (function (bytes) promise.complete (bytes.getString (0, bytes.length)));
			
		} else {
			
			promise.complete (getText (id));
			
		}
		
		#else
		
		promise.completeWith (loadBytes (id).then (function (bytes) {
			
			return new Future<String> (function () {
				
				if (bytes == null) {
					
					return null;
					
				} else {
					
					return bytes.getString (0, bytes.length);
					
				}
				
			});
			
		}));
		
		#end
		
		return promise.future;
		
	}
	
	
}


#if !display
#if flash

@:keep @:bind #if display private #end class __ASSET__assets_data_achievement_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_achievement_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_deathtype_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_hint_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_message_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_nameentry_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_staffroll_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_statistics_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_stats_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_title_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_ansi_uitext_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_deathtype_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_hint_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_message_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_name_female_cpp extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_name_male_cpp extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_nameentry_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_staffroll_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_statistics_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_stats_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_title_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_uitext_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_achievement_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_deathtype_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_hint_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_message_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_nameentry_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_staffroll_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_statistics_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_stats_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_title_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_data_utf8_uitext_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_001_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_002_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_003_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_010_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_ending_cpp extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_ending_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_matatabi_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_message_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_opening_cpp extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset10_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_tileset9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_events_window_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_font_fangzhengxiangsu14_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_font_font16x16_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_font_pixel_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_images_balloon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_cat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_door_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_effect_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_heart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_item_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_kira_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_arachne_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_bat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_bear_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_bee_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_beetle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_bird_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_boar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_bull_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_cat1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_cat2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_centipede_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_chicken_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_cockroach_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_cow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_crab_ground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_crab_water_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_crystal_golem_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dark_elf1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dark_elf2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dark_elf3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dark_elf4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_doe_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dog1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dog2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_dummy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_earth_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_eel_ground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_eel_water_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_empusa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_evil_eye_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_fairy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_fire_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_floating_skull_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_fly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_frog_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_fungus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gargoyle_fly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gargoyle_walk_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gas_spore_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gelatinous_cube_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ghost_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ghoul_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gillman_ground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gillman_water_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gnole1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gnole2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goatman1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goatman2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goblin1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goblin2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goblin3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_goblin4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_golem_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_gorilla_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_grizzy_bear_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_hairy_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_harpy_fly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_harpy_walk_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_homunculus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_horse1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_horse2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_horse3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_horse4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ice_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_imp_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_insectivorous_plant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_insect_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_invader_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_iron_golem_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_jelly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_jellyfish_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_legion_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_lesser_fiend1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_lesser_fiend2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_liche_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_lizard_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_lizardman1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_lizardman2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_magot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_mandragora_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_mantis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_medousa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_mindflayer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_minotaur1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_minotaur2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_mosquito_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_mummy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_myconid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_nightmare_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_octopus_ground_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_octopus_water_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ogre1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ogre2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_orc1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_orc2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_panther_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_pig_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_pillbug_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_poison_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_polar_bear_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_pumpkin_head_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_rat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ratman1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_ratman2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_reaper_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_saber_tiger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_scorpion_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_sea_serpent_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_shadow_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_sheep_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_shellfish_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_shrieker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_skeleton1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_skeleton2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_skeleton3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_skeleton_dog_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_skeleton_horse_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_slime_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_slug_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_snail_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_snake_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_snake_man_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_snow_panther_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_snow_wolf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_soldier_ant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_specter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_spider_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_stag_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_succubus_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_tentacle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_tick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_tiger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_toad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_vampire_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_vine_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_vulture_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_water_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_werewolf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_wight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_wind_demon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_wolf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_worker_ant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_worm_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_wraith_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_wyvern_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_yeti_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_monster_zombie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_a_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_b_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_background_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_pad_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_player_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_result_girl_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_result_girl2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_result_girl3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_result_kira_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_smoke_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_spike_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_cloud1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_cloud2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_cloud3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_cloud4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_title_sunbeam_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_armor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_food_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_orb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_potion_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_ring_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_scroll_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_wand_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_category_weapon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_enemylog_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_frame32x256_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_itemcommand_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_itemlog_cursor_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_listitem_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_listitem2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_message_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_messagetext_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_window200x100_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_images_ui_window624x74_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_levels_000_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_001_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_002_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_003_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_004_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_005_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_006_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_007_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_008_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_009_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_010_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_011_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_012_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_013_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_014_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_015_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_016_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_017_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_018_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_019_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_020_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_021_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_022_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_023_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_024_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_025_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_026_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_027_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_028_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_029_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_030_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_031_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_032_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_033_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_034_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_035_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_036_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_037_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_038_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_039_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_040_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_041_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_042_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_043_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_044_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_045_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_046_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_047_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_048_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_049_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_050_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_500_tmx extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_enemy_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_enemy_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_enemy_nightmare_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_item_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_item_consumable_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_item_equipment_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_ansi_player_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_enemy_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_enemy_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_enemy_nightmare_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_item_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_item_consumable_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_item_equipment_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_player_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_tilenone_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_levels_tileset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_enemy_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_enemy_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_enemy_nightmare_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_item_appear_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_item_consumable_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_item_equipment_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_levels_utf8_player_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_templatecsv_item_consumable_csv extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_001_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_002_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_003_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_004_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_005_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_006_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_007_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_008_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_009_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_010_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_011_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_012_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_013_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_014_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_015_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_016_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_nightmare_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_result_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_op1_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_music_op2_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_pickup2_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_foot2_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_destroy_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_hit_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_hit4_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_eat_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_enemy_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_equip_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_put_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_avoid2_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_recover_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_destroy2_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_menu_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_pi_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_hint_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_coin_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_levelup_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_badstatus_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_warp_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_error_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_flash_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_break_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_roar_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_powerup_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_chime_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__assets_sounds_unlock_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }


#elseif html5






















































@:keep #if display private #end class __ASSET__assets_font_fangzhengxiangsu14_ttf extends lime.text.Font { public function new () { super (); name = "FZXS14"; } } 

@:keep #if display private #end class __ASSET__assets_font_pixel_ttf extends lime.text.Font { public function new () { super (); name = "PixelMplus10 Regular"; } } 
































































































































































































































































































































@:keep #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { super (); name = "Nokia Cellphone FC Small"; } } 
@:keep #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { super (); name = "Monsterrat"; } } 




#else



#if (windows || mac || linux || cpp)


@:file("assets/data/achievement.csv") #if display private #end class __ASSET__assets_data_achievement_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/achievement.csv") #if display private #end class __ASSET__assets_data_ansi_achievement_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/deathtype.csv") #if display private #end class __ASSET__assets_data_ansi_deathtype_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/hint.csv") #if display private #end class __ASSET__assets_data_ansi_hint_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/message.csv") #if display private #end class __ASSET__assets_data_ansi_message_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/nameentry.csv") #if display private #end class __ASSET__assets_data_ansi_nameentry_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/staffroll.csv") #if display private #end class __ASSET__assets_data_ansi_staffroll_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/statistics.csv") #if display private #end class __ASSET__assets_data_ansi_statistics_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/stats.csv") #if display private #end class __ASSET__assets_data_ansi_stats_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/title.csv") #if display private #end class __ASSET__assets_data_ansi_title_csv extends lime.utils.Bytes {}
@:file("assets/data/ansi/uitext.csv") #if display private #end class __ASSET__assets_data_ansi_uitext_csv extends lime.utils.Bytes {}
@:file("assets/data/deathtype.csv") #if display private #end class __ASSET__assets_data_deathtype_csv extends lime.utils.Bytes {}
@:file("assets/data/hint.csv") #if display private #end class __ASSET__assets_data_hint_csv extends lime.utils.Bytes {}
@:file("assets/data/message.csv") #if display private #end class __ASSET__assets_data_message_csv extends lime.utils.Bytes {}
@:file("assets/data/name/female.cpp") #if display private #end class __ASSET__assets_data_name_female_cpp extends lime.utils.Bytes {}
@:file("assets/data/name/male.cpp") #if display private #end class __ASSET__assets_data_name_male_cpp extends lime.utils.Bytes {}
@:file("assets/data/nameentry.csv") #if display private #end class __ASSET__assets_data_nameentry_csv extends lime.utils.Bytes {}
@:file("assets/data/staffroll.csv") #if display private #end class __ASSET__assets_data_staffroll_csv extends lime.utils.Bytes {}
@:file("assets/data/statistics.csv") #if display private #end class __ASSET__assets_data_statistics_csv extends lime.utils.Bytes {}
@:file("assets/data/stats.csv") #if display private #end class __ASSET__assets_data_stats_csv extends lime.utils.Bytes {}
@:file("assets/data/title.csv") #if display private #end class __ASSET__assets_data_title_csv extends lime.utils.Bytes {}
@:file("assets/data/uitext.csv") #if display private #end class __ASSET__assets_data_uitext_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/achievement.csv") #if display private #end class __ASSET__assets_data_utf8_achievement_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/deathtype.csv") #if display private #end class __ASSET__assets_data_utf8_deathtype_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/hint.csv") #if display private #end class __ASSET__assets_data_utf8_hint_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/message.csv") #if display private #end class __ASSET__assets_data_utf8_message_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/nameentry.csv") #if display private #end class __ASSET__assets_data_utf8_nameentry_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/staffroll.csv") #if display private #end class __ASSET__assets_data_utf8_staffroll_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/statistics.csv") #if display private #end class __ASSET__assets_data_utf8_statistics_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/stats.csv") #if display private #end class __ASSET__assets_data_utf8_stats_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/title.csv") #if display private #end class __ASSET__assets_data_utf8_title_csv extends lime.utils.Bytes {}
@:file("assets/data/utf8/uitext.csv") #if display private #end class __ASSET__assets_data_utf8_uitext_csv extends lime.utils.Bytes {}
@:file("assets/events/001.tmx") #if display private #end class __ASSET__assets_events_001_tmx extends lime.utils.Bytes {}
@:file("assets/events/002.tmx") #if display private #end class __ASSET__assets_events_002_tmx extends lime.utils.Bytes {}
@:file("assets/events/003.tmx") #if display private #end class __ASSET__assets_events_003_tmx extends lime.utils.Bytes {}
@:file("assets/events/010.tmx") #if display private #end class __ASSET__assets_events_010_tmx extends lime.utils.Bytes {}
@:image("assets/events/cursor.png") #if display private #end class __ASSET__assets_events_cursor_png extends lime.graphics.Image {}
@:file("assets/events/ending.cpp") #if display private #end class __ASSET__assets_events_ending_cpp extends lime.utils.Bytes {}
@:image("assets/events/ending.png") #if display private #end class __ASSET__assets_events_ending_png extends lime.graphics.Image {}
@:image("assets/events/matatabi.png") #if display private #end class __ASSET__assets_events_matatabi_png extends lime.graphics.Image {}
@:file("assets/events/message.csv") #if display private #end class __ASSET__assets_events_message_csv extends lime.utils.Bytes {}
@:file("assets/events/opening.cpp") #if display private #end class __ASSET__assets_events_opening_cpp extends lime.utils.Bytes {}
@:image("assets/events/tileset1.png") #if display private #end class __ASSET__assets_events_tileset1_png extends lime.graphics.Image {}
@:image("assets/events/tileset10.png") #if display private #end class __ASSET__assets_events_tileset10_png extends lime.graphics.Image {}
@:image("assets/events/tileset2.png") #if display private #end class __ASSET__assets_events_tileset2_png extends lime.graphics.Image {}
@:image("assets/events/tileset3.png") #if display private #end class __ASSET__assets_events_tileset3_png extends lime.graphics.Image {}
@:image("assets/events/tileset4.png") #if display private #end class __ASSET__assets_events_tileset4_png extends lime.graphics.Image {}
@:image("assets/events/tileset5.png") #if display private #end class __ASSET__assets_events_tileset5_png extends lime.graphics.Image {}
@:image("assets/events/tileset6.png") #if display private #end class __ASSET__assets_events_tileset6_png extends lime.graphics.Image {}
@:image("assets/events/tileset7.png") #if display private #end class __ASSET__assets_events_tileset7_png extends lime.graphics.Image {}
@:image("assets/events/tileset8.png") #if display private #end class __ASSET__assets_events_tileset8_png extends lime.graphics.Image {}
@:image("assets/events/tileset9.png") #if display private #end class __ASSET__assets_events_tileset9_png extends lime.graphics.Image {}
@:image("assets/events/window.png") #if display private #end class __ASSET__assets_events_window_png extends lime.graphics.Image {}
@:font("assets/font/fangzhengxiangsu14.ttf") #if display private #end class __ASSET__assets_font_fangzhengxiangsu14_ttf extends lime.text.Font {}
@:image("assets/font/font16x16.png") #if display private #end class __ASSET__assets_font_font16x16_png extends lime.graphics.Image {}
@:font("assets/font/pixel.ttf") #if display private #end class __ASSET__assets_font_pixel_ttf extends lime.text.Font {}
@:image("assets/images/balloon.png") #if display private #end class __ASSET__assets_images_balloon_png extends lime.graphics.Image {}
@:image("assets/images/cat.png") #if display private #end class __ASSET__assets_images_cat_png extends lime.graphics.Image {}
@:image("assets/images/cursor.png") #if display private #end class __ASSET__assets_images_cursor_png extends lime.graphics.Image {}
@:image("assets/images/door.png") #if display private #end class __ASSET__assets_images_door_png extends lime.graphics.Image {}
@:image("assets/images/effect.png") #if display private #end class __ASSET__assets_images_effect_png extends lime.graphics.Image {}
@:image("assets/images/heart.png") #if display private #end class __ASSET__assets_images_heart_png extends lime.graphics.Image {}
@:image("assets/images/item.png") #if display private #end class __ASSET__assets_images_item_png extends lime.graphics.Image {}
@:image("assets/images/kira.png") #if display private #end class __ASSET__assets_images_kira_png extends lime.graphics.Image {}
@:image("assets/images/monster/arachne.png") #if display private #end class __ASSET__assets_images_monster_arachne_png extends lime.graphics.Image {}
@:image("assets/images/monster/bat.png") #if display private #end class __ASSET__assets_images_monster_bat_png extends lime.graphics.Image {}
@:image("assets/images/monster/bear.png") #if display private #end class __ASSET__assets_images_monster_bear_png extends lime.graphics.Image {}
@:image("assets/images/monster/bee.png") #if display private #end class __ASSET__assets_images_monster_bee_png extends lime.graphics.Image {}
@:image("assets/images/monster/beetle.png") #if display private #end class __ASSET__assets_images_monster_beetle_png extends lime.graphics.Image {}
@:image("assets/images/monster/bird.png") #if display private #end class __ASSET__assets_images_monster_bird_png extends lime.graphics.Image {}
@:image("assets/images/monster/boar.png") #if display private #end class __ASSET__assets_images_monster_boar_png extends lime.graphics.Image {}
@:image("assets/images/monster/bull.png") #if display private #end class __ASSET__assets_images_monster_bull_png extends lime.graphics.Image {}
@:image("assets/images/monster/cat1.png") #if display private #end class __ASSET__assets_images_monster_cat1_png extends lime.graphics.Image {}
@:image("assets/images/monster/cat2.png") #if display private #end class __ASSET__assets_images_monster_cat2_png extends lime.graphics.Image {}
@:image("assets/images/monster/centipede.png") #if display private #end class __ASSET__assets_images_monster_centipede_png extends lime.graphics.Image {}
@:image("assets/images/monster/chicken.png") #if display private #end class __ASSET__assets_images_monster_chicken_png extends lime.graphics.Image {}
@:image("assets/images/monster/cockroach.png") #if display private #end class __ASSET__assets_images_monster_cockroach_png extends lime.graphics.Image {}
@:image("assets/images/monster/cow.png") #if display private #end class __ASSET__assets_images_monster_cow_png extends lime.graphics.Image {}
@:image("assets/images/monster/crab_ground.png") #if display private #end class __ASSET__assets_images_monster_crab_ground_png extends lime.graphics.Image {}
@:image("assets/images/monster/crab_water.png") #if display private #end class __ASSET__assets_images_monster_crab_water_png extends lime.graphics.Image {}
@:image("assets/images/monster/crystal_golem.png") #if display private #end class __ASSET__assets_images_monster_crystal_golem_png extends lime.graphics.Image {}
@:image("assets/images/monster/dark_elf1.png") #if display private #end class __ASSET__assets_images_monster_dark_elf1_png extends lime.graphics.Image {}
@:image("assets/images/monster/dark_elf2.png") #if display private #end class __ASSET__assets_images_monster_dark_elf2_png extends lime.graphics.Image {}
@:image("assets/images/monster/dark_elf3.png") #if display private #end class __ASSET__assets_images_monster_dark_elf3_png extends lime.graphics.Image {}
@:image("assets/images/monster/dark_elf4.png") #if display private #end class __ASSET__assets_images_monster_dark_elf4_png extends lime.graphics.Image {}
@:image("assets/images/monster/doe.png") #if display private #end class __ASSET__assets_images_monster_doe_png extends lime.graphics.Image {}
@:image("assets/images/monster/dog1.png") #if display private #end class __ASSET__assets_images_monster_dog1_png extends lime.graphics.Image {}
@:image("assets/images/monster/dog2.png") #if display private #end class __ASSET__assets_images_monster_dog2_png extends lime.graphics.Image {}
@:image("assets/images/monster/dummy.png") #if display private #end class __ASSET__assets_images_monster_dummy_png extends lime.graphics.Image {}
@:image("assets/images/monster/earth_demon.png") #if display private #end class __ASSET__assets_images_monster_earth_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/eel_ground.png") #if display private #end class __ASSET__assets_images_monster_eel_ground_png extends lime.graphics.Image {}
@:image("assets/images/monster/eel_water.png") #if display private #end class __ASSET__assets_images_monster_eel_water_png extends lime.graphics.Image {}
@:image("assets/images/monster/empusa.png") #if display private #end class __ASSET__assets_images_monster_empusa_png extends lime.graphics.Image {}
@:image("assets/images/monster/evil_eye.png") #if display private #end class __ASSET__assets_images_monster_evil_eye_png extends lime.graphics.Image {}
@:image("assets/images/monster/fairy.png") #if display private #end class __ASSET__assets_images_monster_fairy_png extends lime.graphics.Image {}
@:image("assets/images/monster/fire_demon.png") #if display private #end class __ASSET__assets_images_monster_fire_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/floating_skull.png") #if display private #end class __ASSET__assets_images_monster_floating_skull_png extends lime.graphics.Image {}
@:image("assets/images/monster/fly.png") #if display private #end class __ASSET__assets_images_monster_fly_png extends lime.graphics.Image {}
@:image("assets/images/monster/frog.png") #if display private #end class __ASSET__assets_images_monster_frog_png extends lime.graphics.Image {}
@:image("assets/images/monster/fungus.png") #if display private #end class __ASSET__assets_images_monster_fungus_png extends lime.graphics.Image {}
@:image("assets/images/monster/gargoyle_fly.png") #if display private #end class __ASSET__assets_images_monster_gargoyle_fly_png extends lime.graphics.Image {}
@:image("assets/images/monster/gargoyle_walk.png") #if display private #end class __ASSET__assets_images_monster_gargoyle_walk_png extends lime.graphics.Image {}
@:image("assets/images/monster/gas_spore.png") #if display private #end class __ASSET__assets_images_monster_gas_spore_png extends lime.graphics.Image {}
@:image("assets/images/monster/gelatinous_cube.png") #if display private #end class __ASSET__assets_images_monster_gelatinous_cube_png extends lime.graphics.Image {}
@:image("assets/images/monster/ghost.png") #if display private #end class __ASSET__assets_images_monster_ghost_png extends lime.graphics.Image {}
@:image("assets/images/monster/ghoul.png") #if display private #end class __ASSET__assets_images_monster_ghoul_png extends lime.graphics.Image {}
@:image("assets/images/monster/gillman_ground.png") #if display private #end class __ASSET__assets_images_monster_gillman_ground_png extends lime.graphics.Image {}
@:image("assets/images/monster/gillman_water.png") #if display private #end class __ASSET__assets_images_monster_gillman_water_png extends lime.graphics.Image {}
@:image("assets/images/monster/gnole1.png") #if display private #end class __ASSET__assets_images_monster_gnole1_png extends lime.graphics.Image {}
@:image("assets/images/monster/gnole2.png") #if display private #end class __ASSET__assets_images_monster_gnole2_png extends lime.graphics.Image {}
@:image("assets/images/monster/goat.png") #if display private #end class __ASSET__assets_images_monster_goat_png extends lime.graphics.Image {}
@:image("assets/images/monster/goatman1.png") #if display private #end class __ASSET__assets_images_monster_goatman1_png extends lime.graphics.Image {}
@:image("assets/images/monster/goatman2.png") #if display private #end class __ASSET__assets_images_monster_goatman2_png extends lime.graphics.Image {}
@:image("assets/images/monster/goblin1.png") #if display private #end class __ASSET__assets_images_monster_goblin1_png extends lime.graphics.Image {}
@:image("assets/images/monster/goblin2.png") #if display private #end class __ASSET__assets_images_monster_goblin2_png extends lime.graphics.Image {}
@:image("assets/images/monster/goblin3.png") #if display private #end class __ASSET__assets_images_monster_goblin3_png extends lime.graphics.Image {}
@:image("assets/images/monster/goblin4.png") #if display private #end class __ASSET__assets_images_monster_goblin4_png extends lime.graphics.Image {}
@:image("assets/images/monster/golem.png") #if display private #end class __ASSET__assets_images_monster_golem_png extends lime.graphics.Image {}
@:image("assets/images/monster/gorilla.png") #if display private #end class __ASSET__assets_images_monster_gorilla_png extends lime.graphics.Image {}
@:image("assets/images/monster/grizzy_bear.png") #if display private #end class __ASSET__assets_images_monster_grizzy_bear_png extends lime.graphics.Image {}
@:image("assets/images/monster/hairy_demon.png") #if display private #end class __ASSET__assets_images_monster_hairy_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/harpy_fly.png") #if display private #end class __ASSET__assets_images_monster_harpy_fly_png extends lime.graphics.Image {}
@:image("assets/images/monster/harpy_walk.png") #if display private #end class __ASSET__assets_images_monster_harpy_walk_png extends lime.graphics.Image {}
@:image("assets/images/monster/homunculus.png") #if display private #end class __ASSET__assets_images_monster_homunculus_png extends lime.graphics.Image {}
@:image("assets/images/monster/horse1.png") #if display private #end class __ASSET__assets_images_monster_horse1_png extends lime.graphics.Image {}
@:image("assets/images/monster/horse2.png") #if display private #end class __ASSET__assets_images_monster_horse2_png extends lime.graphics.Image {}
@:image("assets/images/monster/horse3.png") #if display private #end class __ASSET__assets_images_monster_horse3_png extends lime.graphics.Image {}
@:image("assets/images/monster/horse4.png") #if display private #end class __ASSET__assets_images_monster_horse4_png extends lime.graphics.Image {}
@:image("assets/images/monster/ice_demon.png") #if display private #end class __ASSET__assets_images_monster_ice_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/imp.png") #if display private #end class __ASSET__assets_images_monster_imp_png extends lime.graphics.Image {}
@:image("assets/images/monster/insectivorous_plant.png") #if display private #end class __ASSET__assets_images_monster_insectivorous_plant_png extends lime.graphics.Image {}
@:image("assets/images/monster/insect_demon.png") #if display private #end class __ASSET__assets_images_monster_insect_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/invader.png") #if display private #end class __ASSET__assets_images_monster_invader_png extends lime.graphics.Image {}
@:image("assets/images/monster/iron_golem.png") #if display private #end class __ASSET__assets_images_monster_iron_golem_png extends lime.graphics.Image {}
@:image("assets/images/monster/jelly.png") #if display private #end class __ASSET__assets_images_monster_jelly_png extends lime.graphics.Image {}
@:image("assets/images/monster/jellyfish.png") #if display private #end class __ASSET__assets_images_monster_jellyfish_png extends lime.graphics.Image {}
@:image("assets/images/monster/legion.png") #if display private #end class __ASSET__assets_images_monster_legion_png extends lime.graphics.Image {}
@:image("assets/images/monster/lesser_fiend1.png") #if display private #end class __ASSET__assets_images_monster_lesser_fiend1_png extends lime.graphics.Image {}
@:image("assets/images/monster/lesser_fiend2.png") #if display private #end class __ASSET__assets_images_monster_lesser_fiend2_png extends lime.graphics.Image {}
@:image("assets/images/monster/liche.png") #if display private #end class __ASSET__assets_images_monster_liche_png extends lime.graphics.Image {}
@:image("assets/images/monster/lizard.png") #if display private #end class __ASSET__assets_images_monster_lizard_png extends lime.graphics.Image {}
@:image("assets/images/monster/lizardman1.png") #if display private #end class __ASSET__assets_images_monster_lizardman1_png extends lime.graphics.Image {}
@:image("assets/images/monster/lizardman2.png") #if display private #end class __ASSET__assets_images_monster_lizardman2_png extends lime.graphics.Image {}
@:image("assets/images/monster/magot.png") #if display private #end class __ASSET__assets_images_monster_magot_png extends lime.graphics.Image {}
@:image("assets/images/monster/mandragora.png") #if display private #end class __ASSET__assets_images_monster_mandragora_png extends lime.graphics.Image {}
@:image("assets/images/monster/mantis.png") #if display private #end class __ASSET__assets_images_monster_mantis_png extends lime.graphics.Image {}
@:image("assets/images/monster/medousa.png") #if display private #end class __ASSET__assets_images_monster_medousa_png extends lime.graphics.Image {}
@:image("assets/images/monster/mindflayer.png") #if display private #end class __ASSET__assets_images_monster_mindflayer_png extends lime.graphics.Image {}
@:image("assets/images/monster/minotaur1.png") #if display private #end class __ASSET__assets_images_monster_minotaur1_png extends lime.graphics.Image {}
@:image("assets/images/monster/minotaur2.png") #if display private #end class __ASSET__assets_images_monster_minotaur2_png extends lime.graphics.Image {}
@:image("assets/images/monster/mosquito.png") #if display private #end class __ASSET__assets_images_monster_mosquito_png extends lime.graphics.Image {}
@:image("assets/images/monster/mummy.png") #if display private #end class __ASSET__assets_images_monster_mummy_png extends lime.graphics.Image {}
@:image("assets/images/monster/myconid.png") #if display private #end class __ASSET__assets_images_monster_myconid_png extends lime.graphics.Image {}
@:image("assets/images/monster/nightmare.png") #if display private #end class __ASSET__assets_images_monster_nightmare_png extends lime.graphics.Image {}
@:image("assets/images/monster/octopus_ground.png") #if display private #end class __ASSET__assets_images_monster_octopus_ground_png extends lime.graphics.Image {}
@:image("assets/images/monster/octopus_water.png") #if display private #end class __ASSET__assets_images_monster_octopus_water_png extends lime.graphics.Image {}
@:image("assets/images/monster/ogre1.png") #if display private #end class __ASSET__assets_images_monster_ogre1_png extends lime.graphics.Image {}
@:image("assets/images/monster/ogre2.png") #if display private #end class __ASSET__assets_images_monster_ogre2_png extends lime.graphics.Image {}
@:image("assets/images/monster/orc1.png") #if display private #end class __ASSET__assets_images_monster_orc1_png extends lime.graphics.Image {}
@:image("assets/images/monster/orc2.png") #if display private #end class __ASSET__assets_images_monster_orc2_png extends lime.graphics.Image {}
@:image("assets/images/monster/panther.png") #if display private #end class __ASSET__assets_images_monster_panther_png extends lime.graphics.Image {}
@:image("assets/images/monster/pig.png") #if display private #end class __ASSET__assets_images_monster_pig_png extends lime.graphics.Image {}
@:image("assets/images/monster/pillbug.png") #if display private #end class __ASSET__assets_images_monster_pillbug_png extends lime.graphics.Image {}
@:image("assets/images/monster/poison_demon.png") #if display private #end class __ASSET__assets_images_monster_poison_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/polar_bear.png") #if display private #end class __ASSET__assets_images_monster_polar_bear_png extends lime.graphics.Image {}
@:image("assets/images/monster/pumpkin_head.png") #if display private #end class __ASSET__assets_images_monster_pumpkin_head_png extends lime.graphics.Image {}
@:image("assets/images/monster/rat.png") #if display private #end class __ASSET__assets_images_monster_rat_png extends lime.graphics.Image {}
@:image("assets/images/monster/ratman1.png") #if display private #end class __ASSET__assets_images_monster_ratman1_png extends lime.graphics.Image {}
@:image("assets/images/monster/ratman2.png") #if display private #end class __ASSET__assets_images_monster_ratman2_png extends lime.graphics.Image {}
@:image("assets/images/monster/reaper.png") #if display private #end class __ASSET__assets_images_monster_reaper_png extends lime.graphics.Image {}
@:image("assets/images/monster/saber_tiger.png") #if display private #end class __ASSET__assets_images_monster_saber_tiger_png extends lime.graphics.Image {}
@:image("assets/images/monster/scorpion.png") #if display private #end class __ASSET__assets_images_monster_scorpion_png extends lime.graphics.Image {}
@:image("assets/images/monster/sea_serpent.png") #if display private #end class __ASSET__assets_images_monster_sea_serpent_png extends lime.graphics.Image {}
@:image("assets/images/monster/shadow_demon.png") #if display private #end class __ASSET__assets_images_monster_shadow_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/sheep.png") #if display private #end class __ASSET__assets_images_monster_sheep_png extends lime.graphics.Image {}
@:image("assets/images/monster/shellfish.png") #if display private #end class __ASSET__assets_images_monster_shellfish_png extends lime.graphics.Image {}
@:image("assets/images/monster/shrieker.png") #if display private #end class __ASSET__assets_images_monster_shrieker_png extends lime.graphics.Image {}
@:image("assets/images/monster/skeleton1.png") #if display private #end class __ASSET__assets_images_monster_skeleton1_png extends lime.graphics.Image {}
@:image("assets/images/monster/skeleton2.png") #if display private #end class __ASSET__assets_images_monster_skeleton2_png extends lime.graphics.Image {}
@:image("assets/images/monster/skeleton3.png") #if display private #end class __ASSET__assets_images_monster_skeleton3_png extends lime.graphics.Image {}
@:image("assets/images/monster/skeleton_dog.png") #if display private #end class __ASSET__assets_images_monster_skeleton_dog_png extends lime.graphics.Image {}
@:image("assets/images/monster/skeleton_horse.png") #if display private #end class __ASSET__assets_images_monster_skeleton_horse_png extends lime.graphics.Image {}
@:image("assets/images/monster/slime.png") #if display private #end class __ASSET__assets_images_monster_slime_png extends lime.graphics.Image {}
@:image("assets/images/monster/slug.png") #if display private #end class __ASSET__assets_images_monster_slug_png extends lime.graphics.Image {}
@:image("assets/images/monster/snail.png") #if display private #end class __ASSET__assets_images_monster_snail_png extends lime.graphics.Image {}
@:image("assets/images/monster/snake.png") #if display private #end class __ASSET__assets_images_monster_snake_png extends lime.graphics.Image {}
@:image("assets/images/monster/snake_man.png") #if display private #end class __ASSET__assets_images_monster_snake_man_png extends lime.graphics.Image {}
@:image("assets/images/monster/snow_panther.png") #if display private #end class __ASSET__assets_images_monster_snow_panther_png extends lime.graphics.Image {}
@:image("assets/images/monster/snow_wolf.png") #if display private #end class __ASSET__assets_images_monster_snow_wolf_png extends lime.graphics.Image {}
@:image("assets/images/monster/soldier_ant.png") #if display private #end class __ASSET__assets_images_monster_soldier_ant_png extends lime.graphics.Image {}
@:image("assets/images/monster/specter.png") #if display private #end class __ASSET__assets_images_monster_specter_png extends lime.graphics.Image {}
@:image("assets/images/monster/spider.png") #if display private #end class __ASSET__assets_images_monster_spider_png extends lime.graphics.Image {}
@:image("assets/images/monster/stag.png") #if display private #end class __ASSET__assets_images_monster_stag_png extends lime.graphics.Image {}
@:image("assets/images/monster/succubus.png") #if display private #end class __ASSET__assets_images_monster_succubus_png extends lime.graphics.Image {}
@:image("assets/images/monster/tentacle.png") #if display private #end class __ASSET__assets_images_monster_tentacle_png extends lime.graphics.Image {}
@:image("assets/images/monster/tick.png") #if display private #end class __ASSET__assets_images_monster_tick_png extends lime.graphics.Image {}
@:image("assets/images/monster/tiger.png") #if display private #end class __ASSET__assets_images_monster_tiger_png extends lime.graphics.Image {}
@:image("assets/images/monster/toad.png") #if display private #end class __ASSET__assets_images_monster_toad_png extends lime.graphics.Image {}
@:image("assets/images/monster/vampire.png") #if display private #end class __ASSET__assets_images_monster_vampire_png extends lime.graphics.Image {}
@:image("assets/images/monster/vine.png") #if display private #end class __ASSET__assets_images_monster_vine_png extends lime.graphics.Image {}
@:image("assets/images/monster/vulture_demon.png") #if display private #end class __ASSET__assets_images_monster_vulture_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/water_demon.png") #if display private #end class __ASSET__assets_images_monster_water_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/werewolf.png") #if display private #end class __ASSET__assets_images_monster_werewolf_png extends lime.graphics.Image {}
@:image("assets/images/monster/wight.png") #if display private #end class __ASSET__assets_images_monster_wight_png extends lime.graphics.Image {}
@:image("assets/images/monster/wind_demon.png") #if display private #end class __ASSET__assets_images_monster_wind_demon_png extends lime.graphics.Image {}
@:image("assets/images/monster/wolf.png") #if display private #end class __ASSET__assets_images_monster_wolf_png extends lime.graphics.Image {}
@:image("assets/images/monster/worker_ant.png") #if display private #end class __ASSET__assets_images_monster_worker_ant_png extends lime.graphics.Image {}
@:image("assets/images/monster/worm.png") #if display private #end class __ASSET__assets_images_monster_worm_png extends lime.graphics.Image {}
@:image("assets/images/monster/wraith.png") #if display private #end class __ASSET__assets_images_monster_wraith_png extends lime.graphics.Image {}
@:image("assets/images/monster/wyvern.png") #if display private #end class __ASSET__assets_images_monster_wyvern_png extends lime.graphics.Image {}
@:image("assets/images/monster/yeti.png") #if display private #end class __ASSET__assets_images_monster_yeti_png extends lime.graphics.Image {}
@:image("assets/images/monster/zombie.png") #if display private #end class __ASSET__assets_images_monster_zombie_png extends lime.graphics.Image {}
@:image("assets/images/pad/a.png") #if display private #end class __ASSET__assets_images_pad_a_png extends lime.graphics.Image {}
@:image("assets/images/pad/b.png") #if display private #end class __ASSET__assets_images_pad_b_png extends lime.graphics.Image {}
@:image("assets/images/pad/background.png") #if display private #end class __ASSET__assets_images_pad_background_png extends lime.graphics.Image {}
@:image("assets/images/pad/down.png") #if display private #end class __ASSET__assets_images_pad_down_png extends lime.graphics.Image {}
@:image("assets/images/pad/left.png") #if display private #end class __ASSET__assets_images_pad_left_png extends lime.graphics.Image {}
@:image("assets/images/pad/right.png") #if display private #end class __ASSET__assets_images_pad_right_png extends lime.graphics.Image {}
@:image("assets/images/pad/up.png") #if display private #end class __ASSET__assets_images_pad_up_png extends lime.graphics.Image {}
@:image("assets/images/player.png") #if display private #end class __ASSET__assets_images_player_png extends lime.graphics.Image {}
@:image("assets/images/result/girl.png") #if display private #end class __ASSET__assets_images_result_girl_png extends lime.graphics.Image {}
@:image("assets/images/result/girl2.png") #if display private #end class __ASSET__assets_images_result_girl2_png extends lime.graphics.Image {}
@:image("assets/images/result/girl3.png") #if display private #end class __ASSET__assets_images_result_girl3_png extends lime.graphics.Image {}
@:image("assets/images/result/kira.png") #if display private #end class __ASSET__assets_images_result_kira_png extends lime.graphics.Image {}
@:image("assets/images/smoke.png") #if display private #end class __ASSET__assets_images_smoke_png extends lime.graphics.Image {}
@:image("assets/images/spike.png") #if display private #end class __ASSET__assets_images_spike_png extends lime.graphics.Image {}
@:image("assets/images/tiles.png") #if display private #end class __ASSET__assets_images_tiles_png extends lime.graphics.Image {}
@:image("assets/images/title/bg.png") #if display private #end class __ASSET__assets_images_title_bg_png extends lime.graphics.Image {}
@:image("assets/images/title/cloud1.png") #if display private #end class __ASSET__assets_images_title_cloud1_png extends lime.graphics.Image {}
@:image("assets/images/title/cloud2.png") #if display private #end class __ASSET__assets_images_title_cloud2_png extends lime.graphics.Image {}
@:image("assets/images/title/cloud3.png") #if display private #end class __ASSET__assets_images_title_cloud3_png extends lime.graphics.Image {}
@:image("assets/images/title/cloud4.png") #if display private #end class __ASSET__assets_images_title_cloud4_png extends lime.graphics.Image {}
@:image("assets/images/title/sunbeam.png") #if display private #end class __ASSET__assets_images_title_sunbeam_png extends lime.graphics.Image {}
@:image("assets/images/ui/arrow.png") #if display private #end class __ASSET__assets_images_ui_arrow_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/armor.png") #if display private #end class __ASSET__assets_images_ui_category_armor_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/food.png") #if display private #end class __ASSET__assets_images_ui_category_food_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/orb.png") #if display private #end class __ASSET__assets_images_ui_category_orb_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/potion.png") #if display private #end class __ASSET__assets_images_ui_category_potion_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/ring.png") #if display private #end class __ASSET__assets_images_ui_category_ring_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/scroll.png") #if display private #end class __ASSET__assets_images_ui_category_scroll_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/wand.png") #if display private #end class __ASSET__assets_images_ui_category_wand_png extends lime.graphics.Image {}
@:image("assets/images/ui/category/weapon.png") #if display private #end class __ASSET__assets_images_ui_category_weapon_png extends lime.graphics.Image {}
@:image("assets/images/ui/enemylog_cursor.png") #if display private #end class __ASSET__assets_images_ui_enemylog_cursor_png extends lime.graphics.Image {}
@:image("assets/images/ui/frame32x256.png") #if display private #end class __ASSET__assets_images_ui_frame32x256_png extends lime.graphics.Image {}
@:image("assets/images/ui/itemcommand.png") #if display private #end class __ASSET__assets_images_ui_itemcommand_png extends lime.graphics.Image {}
@:image("assets/images/ui/itemlog_cursor.png") #if display private #end class __ASSET__assets_images_ui_itemlog_cursor_png extends lime.graphics.Image {}
@:image("assets/images/ui/listitem.png") #if display private #end class __ASSET__assets_images_ui_listitem_png extends lime.graphics.Image {}
@:image("assets/images/ui/listitem2.png") #if display private #end class __ASSET__assets_images_ui_listitem2_png extends lime.graphics.Image {}
@:image("assets/images/ui/message.png") #if display private #end class __ASSET__assets_images_ui_message_png extends lime.graphics.Image {}
@:image("assets/images/ui/messagetext.png") #if display private #end class __ASSET__assets_images_ui_messagetext_png extends lime.graphics.Image {}
@:image("assets/images/ui/window200x100.png") #if display private #end class __ASSET__assets_images_ui_window200x100_png extends lime.graphics.Image {}
@:image("assets/images/ui/window624x74.png") #if display private #end class __ASSET__assets_images_ui_window624x74_png extends lime.graphics.Image {}
@:file("assets/levels/000.tmx") #if display private #end class __ASSET__assets_levels_000_tmx extends lime.utils.Bytes {}
@:file("assets/levels/001.tmx") #if display private #end class __ASSET__assets_levels_001_tmx extends lime.utils.Bytes {}
@:file("assets/levels/002.tmx") #if display private #end class __ASSET__assets_levels_002_tmx extends lime.utils.Bytes {}
@:file("assets/levels/003.tmx") #if display private #end class __ASSET__assets_levels_003_tmx extends lime.utils.Bytes {}
@:file("assets/levels/004.tmx") #if display private #end class __ASSET__assets_levels_004_tmx extends lime.utils.Bytes {}
@:file("assets/levels/005.tmx") #if display private #end class __ASSET__assets_levels_005_tmx extends lime.utils.Bytes {}
@:file("assets/levels/006.tmx") #if display private #end class __ASSET__assets_levels_006_tmx extends lime.utils.Bytes {}
@:file("assets/levels/007.tmx") #if display private #end class __ASSET__assets_levels_007_tmx extends lime.utils.Bytes {}
@:file("assets/levels/008.tmx") #if display private #end class __ASSET__assets_levels_008_tmx extends lime.utils.Bytes {}
@:file("assets/levels/009.tmx") #if display private #end class __ASSET__assets_levels_009_tmx extends lime.utils.Bytes {}
@:file("assets/levels/010.tmx") #if display private #end class __ASSET__assets_levels_010_tmx extends lime.utils.Bytes {}
@:file("assets/levels/011.tmx") #if display private #end class __ASSET__assets_levels_011_tmx extends lime.utils.Bytes {}
@:file("assets/levels/012.tmx") #if display private #end class __ASSET__assets_levels_012_tmx extends lime.utils.Bytes {}
@:file("assets/levels/013.tmx") #if display private #end class __ASSET__assets_levels_013_tmx extends lime.utils.Bytes {}
@:file("assets/levels/014.tmx") #if display private #end class __ASSET__assets_levels_014_tmx extends lime.utils.Bytes {}
@:file("assets/levels/015.tmx") #if display private #end class __ASSET__assets_levels_015_tmx extends lime.utils.Bytes {}
@:file("assets/levels/016.tmx") #if display private #end class __ASSET__assets_levels_016_tmx extends lime.utils.Bytes {}
@:file("assets/levels/017.tmx") #if display private #end class __ASSET__assets_levels_017_tmx extends lime.utils.Bytes {}
@:file("assets/levels/018.tmx") #if display private #end class __ASSET__assets_levels_018_tmx extends lime.utils.Bytes {}
@:file("assets/levels/019.tmx") #if display private #end class __ASSET__assets_levels_019_tmx extends lime.utils.Bytes {}
@:file("assets/levels/020.tmx") #if display private #end class __ASSET__assets_levels_020_tmx extends lime.utils.Bytes {}
@:file("assets/levels/021.tmx") #if display private #end class __ASSET__assets_levels_021_tmx extends lime.utils.Bytes {}
@:file("assets/levels/022.tmx") #if display private #end class __ASSET__assets_levels_022_tmx extends lime.utils.Bytes {}
@:file("assets/levels/023.tmx") #if display private #end class __ASSET__assets_levels_023_tmx extends lime.utils.Bytes {}
@:file("assets/levels/024.tmx") #if display private #end class __ASSET__assets_levels_024_tmx extends lime.utils.Bytes {}
@:file("assets/levels/025.tmx") #if display private #end class __ASSET__assets_levels_025_tmx extends lime.utils.Bytes {}
@:file("assets/levels/026.tmx") #if display private #end class __ASSET__assets_levels_026_tmx extends lime.utils.Bytes {}
@:file("assets/levels/027.tmx") #if display private #end class __ASSET__assets_levels_027_tmx extends lime.utils.Bytes {}
@:file("assets/levels/028.tmx") #if display private #end class __ASSET__assets_levels_028_tmx extends lime.utils.Bytes {}
@:file("assets/levels/029.tmx") #if display private #end class __ASSET__assets_levels_029_tmx extends lime.utils.Bytes {}
@:file("assets/levels/030.tmx") #if display private #end class __ASSET__assets_levels_030_tmx extends lime.utils.Bytes {}
@:file("assets/levels/031.tmx") #if display private #end class __ASSET__assets_levels_031_tmx extends lime.utils.Bytes {}
@:file("assets/levels/032.tmx") #if display private #end class __ASSET__assets_levels_032_tmx extends lime.utils.Bytes {}
@:file("assets/levels/033.tmx") #if display private #end class __ASSET__assets_levels_033_tmx extends lime.utils.Bytes {}
@:file("assets/levels/034.tmx") #if display private #end class __ASSET__assets_levels_034_tmx extends lime.utils.Bytes {}
@:file("assets/levels/035.tmx") #if display private #end class __ASSET__assets_levels_035_tmx extends lime.utils.Bytes {}
@:file("assets/levels/036.tmx") #if display private #end class __ASSET__assets_levels_036_tmx extends lime.utils.Bytes {}
@:file("assets/levels/037.tmx") #if display private #end class __ASSET__assets_levels_037_tmx extends lime.utils.Bytes {}
@:file("assets/levels/038.tmx") #if display private #end class __ASSET__assets_levels_038_tmx extends lime.utils.Bytes {}
@:file("assets/levels/039.tmx") #if display private #end class __ASSET__assets_levels_039_tmx extends lime.utils.Bytes {}
@:file("assets/levels/040.tmx") #if display private #end class __ASSET__assets_levels_040_tmx extends lime.utils.Bytes {}
@:file("assets/levels/041.tmx") #if display private #end class __ASSET__assets_levels_041_tmx extends lime.utils.Bytes {}
@:file("assets/levels/042.tmx") #if display private #end class __ASSET__assets_levels_042_tmx extends lime.utils.Bytes {}
@:file("assets/levels/043.tmx") #if display private #end class __ASSET__assets_levels_043_tmx extends lime.utils.Bytes {}
@:file("assets/levels/044.tmx") #if display private #end class __ASSET__assets_levels_044_tmx extends lime.utils.Bytes {}
@:file("assets/levels/045.tmx") #if display private #end class __ASSET__assets_levels_045_tmx extends lime.utils.Bytes {}
@:file("assets/levels/046.tmx") #if display private #end class __ASSET__assets_levels_046_tmx extends lime.utils.Bytes {}
@:file("assets/levels/047.tmx") #if display private #end class __ASSET__assets_levels_047_tmx extends lime.utils.Bytes {}
@:file("assets/levels/048.tmx") #if display private #end class __ASSET__assets_levels_048_tmx extends lime.utils.Bytes {}
@:file("assets/levels/049.tmx") #if display private #end class __ASSET__assets_levels_049_tmx extends lime.utils.Bytes {}
@:file("assets/levels/050.tmx") #if display private #end class __ASSET__assets_levels_050_tmx extends lime.utils.Bytes {}
@:file("assets/levels/500.tmx") #if display private #end class __ASSET__assets_levels_500_tmx extends lime.utils.Bytes {}
@:file("assets/levels/ansi/enemy.csv") #if display private #end class __ASSET__assets_levels_ansi_enemy_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/enemy_appear.csv") #if display private #end class __ASSET__assets_levels_ansi_enemy_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/enemy_nightmare.csv") #if display private #end class __ASSET__assets_levels_ansi_enemy_nightmare_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/item_appear.csv") #if display private #end class __ASSET__assets_levels_ansi_item_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/item_consumable.csv") #if display private #end class __ASSET__assets_levels_ansi_item_consumable_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/item_equipment.csv") #if display private #end class __ASSET__assets_levels_ansi_item_equipment_csv extends lime.utils.Bytes {}
@:file("assets/levels/ansi/player.csv") #if display private #end class __ASSET__assets_levels_ansi_player_csv extends lime.utils.Bytes {}
@:file("assets/levels/enemy.csv") #if display private #end class __ASSET__assets_levels_enemy_csv extends lime.utils.Bytes {}
@:file("assets/levels/enemy_appear.csv") #if display private #end class __ASSET__assets_levels_enemy_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/enemy_nightmare.csv") #if display private #end class __ASSET__assets_levels_enemy_nightmare_csv extends lime.utils.Bytes {}
@:file("assets/levels/item_appear.csv") #if display private #end class __ASSET__assets_levels_item_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/item_consumable.csv") #if display private #end class __ASSET__assets_levels_item_consumable_csv extends lime.utils.Bytes {}
@:file("assets/levels/item_equipment.csv") #if display private #end class __ASSET__assets_levels_item_equipment_csv extends lime.utils.Bytes {}
@:file("assets/levels/player.csv") #if display private #end class __ASSET__assets_levels_player_csv extends lime.utils.Bytes {}
@:image("assets/levels/tilenone.png") #if display private #end class __ASSET__assets_levels_tilenone_png extends lime.graphics.Image {}
@:image("assets/levels/tileset.png") #if display private #end class __ASSET__assets_levels_tileset_png extends lime.graphics.Image {}
@:file("assets/levels/utf8/enemy.csv") #if display private #end class __ASSET__assets_levels_utf8_enemy_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/enemy_appear.csv") #if display private #end class __ASSET__assets_levels_utf8_enemy_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/enemy_nightmare.csv") #if display private #end class __ASSET__assets_levels_utf8_enemy_nightmare_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/item_appear.csv") #if display private #end class __ASSET__assets_levels_utf8_item_appear_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/item_consumable.csv") #if display private #end class __ASSET__assets_levels_utf8_item_consumable_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/item_equipment.csv") #if display private #end class __ASSET__assets_levels_utf8_item_equipment_csv extends lime.utils.Bytes {}
@:file("assets/levels/utf8/player.csv") #if display private #end class __ASSET__assets_levels_utf8_player_csv extends lime.utils.Bytes {}
@:file("assets/TemplateCSV/item_consumable.csv") #if display private #end class __ASSET__assets_templatecsv_item_consumable_csv extends lime.utils.Bytes {}
@:file("assets/music/001.ogg") #if display private #end class __ASSET__assets_music_001_ogg extends lime.utils.Bytes {}
@:file("assets/music/002.ogg") #if display private #end class __ASSET__assets_music_002_ogg extends lime.utils.Bytes {}
@:file("assets/music/003.ogg") #if display private #end class __ASSET__assets_music_003_ogg extends lime.utils.Bytes {}
@:file("assets/music/004.ogg") #if display private #end class __ASSET__assets_music_004_ogg extends lime.utils.Bytes {}
@:file("assets/music/005.ogg") #if display private #end class __ASSET__assets_music_005_ogg extends lime.utils.Bytes {}
@:file("assets/music/006.ogg") #if display private #end class __ASSET__assets_music_006_ogg extends lime.utils.Bytes {}
@:file("assets/music/007.ogg") #if display private #end class __ASSET__assets_music_007_ogg extends lime.utils.Bytes {}
@:file("assets/music/008.ogg") #if display private #end class __ASSET__assets_music_008_ogg extends lime.utils.Bytes {}
@:file("assets/music/009.ogg") #if display private #end class __ASSET__assets_music_009_ogg extends lime.utils.Bytes {}
@:file("assets/music/010.ogg") #if display private #end class __ASSET__assets_music_010_ogg extends lime.utils.Bytes {}
@:file("assets/music/011.ogg") #if display private #end class __ASSET__assets_music_011_ogg extends lime.utils.Bytes {}
@:file("assets/music/012.ogg") #if display private #end class __ASSET__assets_music_012_ogg extends lime.utils.Bytes {}
@:file("assets/music/013.ogg") #if display private #end class __ASSET__assets_music_013_ogg extends lime.utils.Bytes {}
@:file("assets/music/014.ogg") #if display private #end class __ASSET__assets_music_014_ogg extends lime.utils.Bytes {}
@:file("assets/music/015.ogg") #if display private #end class __ASSET__assets_music_015_ogg extends lime.utils.Bytes {}
@:file("assets/music/016.ogg") #if display private #end class __ASSET__assets_music_016_ogg extends lime.utils.Bytes {}
@:file("assets/music/nightmare.ogg") #if display private #end class __ASSET__assets_music_nightmare_ogg extends lime.utils.Bytes {}
@:file("assets/music/result.ogg") #if display private #end class __ASSET__assets_music_result_ogg extends lime.utils.Bytes {}
@:file("assets/music/op1.ogg") #if display private #end class __ASSET__assets_music_op1_ogg extends lime.utils.Bytes {}
@:file("assets/music/op2.ogg") #if display private #end class __ASSET__assets_music_op2_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/pickup2.ogg") #if display private #end class __ASSET__assets_sounds_pickup2_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/foot2.ogg") #if display private #end class __ASSET__assets_sounds_foot2_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/destroy.ogg") #if display private #end class __ASSET__assets_sounds_destroy_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/hit.ogg") #if display private #end class __ASSET__assets_sounds_hit_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/hit4.ogg") #if display private #end class __ASSET__assets_sounds_hit4_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/eat.ogg") #if display private #end class __ASSET__assets_sounds_eat_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/enemy.ogg") #if display private #end class __ASSET__assets_sounds_enemy_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/equip.ogg") #if display private #end class __ASSET__assets_sounds_equip_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/put.ogg") #if display private #end class __ASSET__assets_sounds_put_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/avoid2.ogg") #if display private #end class __ASSET__assets_sounds_avoid2_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/recover.ogg") #if display private #end class __ASSET__assets_sounds_recover_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/destroy2.ogg") #if display private #end class __ASSET__assets_sounds_destroy2_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/menu.ogg") #if display private #end class __ASSET__assets_sounds_menu_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/pi.ogg") #if display private #end class __ASSET__assets_sounds_pi_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/hint.ogg") #if display private #end class __ASSET__assets_sounds_hint_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/coin.ogg") #if display private #end class __ASSET__assets_sounds_coin_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/levelup.ogg") #if display private #end class __ASSET__assets_sounds_levelup_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/badstatus.ogg") #if display private #end class __ASSET__assets_sounds_badstatus_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/warp.ogg") #if display private #end class __ASSET__assets_sounds_warp_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/error.ogg") #if display private #end class __ASSET__assets_sounds_error_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/flash.ogg") #if display private #end class __ASSET__assets_sounds_flash_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/break.ogg") #if display private #end class __ASSET__assets_sounds_break_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/roar.ogg") #if display private #end class __ASSET__assets_sounds_roar_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/powerup.ogg") #if display private #end class __ASSET__assets_sounds_powerup_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/chime.ogg") #if display private #end class __ASSET__assets_sounds_chime_ogg extends lime.utils.Bytes {}
@:file("assets/sounds/unlock.ogg") #if display private #end class __ASSET__assets_sounds_unlock_ogg extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/beep.ogg") #if display private #end class __ASSET__flixel_sounds_beep_ogg extends lime.utils.Bytes {}
@:file("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/sounds/flixel.ogg") #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends lime.utils.Bytes {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/nokiafc22.ttf") #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:font("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/fonts/monsterrat.ttf") #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/ui/button.png") #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:image("C:/HaxeToolkit/haxe/lib/flixel/4,3,0/assets/images/logo/default.png") #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}



#end
#end

#if (openfl && !flash)
@:keep #if display private #end class __ASSET__OPENFL__assets_font_fangzhengxiangsu14_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__assets_font_fangzhengxiangsu14_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__assets_font_pixel_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__assets_font_pixel_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_nokiafc22_ttf (); src = font.src; name = font.name; super (); }}
@:keep #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { var font = new __ASSET__flixel_fonts_monsterrat_ttf (); src = font.src; name = font.name; super (); }}

#end

#end