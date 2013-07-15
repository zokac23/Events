CREATE TABLE IF NOT EXISTS `active_event_id` (
  `active_event` int(10) unsigned NOT NULL,
  `name` text COLLATE latin1_bin NOT NULL,
  PRIMARY KEY (`active_event`)
);

DELETE FROM `active_event_id` WHERE `active_event`=52;
INSERT INTO `active_event_id` (`active_event`, `name`) VALUES (52,"Arena Season 6");

SET @CGUID := 465000;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID+1 AND @CGUID+16;
INSERT INTO `creature_spawns` (`id`, `entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movetype`, `displayid`, `faction`, `flags`, `bytes0`, `bytes1`, `bytes2`, `emote_state`, `npc_respawn_link`, `channel_spell`, `channel_target_sqlid`, `channel_target_sqlid_creature`, `standstate`, `death_state`, `mountdisplayid`, `slot1item`, `slot2item`, `slot3item`, `CanFly`, `phase`) VALUES
	(@CGUID+1,33921,571,5753.74,585.413,615.052,0,0,26463,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+2,33915,1,-7123.33,-3766.68,9.40339,0,0,27953,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+3,33918,530,3066.45,3638.87,145.218,0.875901,0,27942,35,0,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+4,34088,1,-7126.8,-3761.97,9.49471,0.820305,0,29077,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+5,34089,530,3078.46,3636.98,145.385,3.12999,0,29078,35,0,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+6,34087,571,5761.32,578.753,615.052,2.09439,0,29076,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+7,33916,530,3073.99,3633.34,143.779,2.09012,0,23768,35,0,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+8,33920,1,-7122.35,-3770.56,9.35682,0,0,22438,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+9,33922,571,5751.54,584.66,615.052,0,0,26464,35,768,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+10,33917,1,-7120.75,-3774.16,9.0363,0.767945,0,22399,35,512,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+11,33923,571,5751.73,582.943,615.052,0,0,26465,35,768,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+12,33919,530,3070.16,3635.11,143.864,0.750492,0,22393,35,0,16777472,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
	(@CGUID+13,34073,0,-8781.05,419.582,105.316,6.02139,0,12917,1078,32768,16777472,0,1,0,0,0,0,0,0,0,0,5305,1984,0,0,1),
	(@CGUID+14,34036,1,1667.87,-4196.97,56.467,4.31096,0,14612,125,32768,16777472,0,1,0,0,0,0,0,0,0,0,14824,0,0,0,1),
	(@CGUID+15,34058,1,1672.85,-4202.31,56.465,3.54302,0,22602,125,32768,67584,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1)
	(@CGUID+16,34076,0,-8772.83,426.068,105.316,4.57276,0,21512,123,32768,16843008,0,257,0,0,0,0,0,0,0,0,34520,29638,0,0,1);
