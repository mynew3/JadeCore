-- Update Fix Errors Database.
-- By Bodeguero for JadeCore.

UPDATE `creature_template` SET `ScriptName`='npc_frostwing_vrykul' WHERE `entry` IN (37132,38125,37127,37134,37133);
UPDATE `creature_template` SET `ScriptName` = 'npc_gravity_well_azil' WHERE `entry` =42499;
UPDATE `creature_template` SET `ScriptName` = 'npc_stalactite_stalker' WHERE `entry` =43159;
UPDATE `creature_template` SET `ScriptName` = 'mob_millhouse_manastorm' WHERE `entry` = 43391;
UPDATE `creature_template` SET `ScriptName` = 'stonecore_teleport' WHERE `entry` = 51396;
UPDATE `creature_template` SET `npcflag` = 1 WHERE `entry` = 51396;

DELETE FROM `creature_template` WHERE (entry = 42333);
INSERT INTO `creature_template` ( `entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES ( 42333, 0, 0, 0, 0, 0, 26448, 0, 0, 0, "High Priestess Azil", "", "", 0, 85, 87, 3, 16, 16, 3, 1.2, 1.42857, 1.0, 1, 2806, 2941, 0, 1815, 9.9, 2000, 2000, 1, 0, 1, 0, 0, 0, 0, 0, 2806, 2941, 1815, 7, 4, 42333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 903, 16820, 19650, "", 0, 1, 19.4279, 0.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 617299803, 1, "boss_priestess_azil", "13623");


-- Spell Scripts
DELETE FROM `spell_script_names` WHERE `spell_id` IN (70713, 68645, 69471, 69488, 69402, 70175, 71335, 71339);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('70713', 'spell_remove_rocket_pack'),
('68645', 'spell_rocket_pack'),
('69471', 'spell_gb_heat_drain'),
('69488', 'spell_gb_overheat_drain'),
('69402', 'spell_gb_incinerating_blast'),
('70175', 'spell_gb_incinerating_blast'),
('71335', 'spell_gb_burning_pitch'),
('71339', 'spell_gb_burning_pitch');

UPDATE `instance_template` SET `script`='instance_the_stonecore' WHERE `map`=725;

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (90000, 0, 0, 0, 0, 38121, 27549, 0, 0, 0, 'Morphs', 'FineWoW', '', 0, 80, 80, 2, 4225, 1.7, 1.14286, 1, 1, 0, 2000, 2000, 1, 32832, 2048, 8, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'morphs_npc');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (90001, 0, 0, 0, 0, 38121, 27549, 0, 0, 0, 'Visual Weapon', 'FineWoW', '', 0, 80, 80, 2, 4225, 1.7, 1.14286, 1, 1, 0, 2000, 2000, 1, 32832, 2048, 8, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'NPC_VisualWeapon');
REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (90002, 0, 0, 0, 0, 38121, 27549, 0, 0, 0, 'Npc Vip Test', 'FineWoW', '', 0, 80, 80, 2, 4225, 1.7, 1.14286, 1, 1, 0, 2000, 2000, 1, 32832, 2048, 8, 0, 0, 0, 0, 0, 7, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71258, 71257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'VIP_NPC');
-- Fix   Achievement [Minutes to Midnight] Critarea of [Glory of the Dragon Soul Raider] 6169
UPDATE `achievement_criteria_data` SET `criteria_id`='6169' WHERE (`criteria_id`='6084') AND (`type`='11');