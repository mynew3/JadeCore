-- System V.I.P
-- By Bodeguero for JadeCore.

ALTER TABLE `account_access` 
ADD COLUMN `vipTime` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `RealmID`,
ADD COLUMN `vipComment` VARCHAR(500) NOT NULL DEFAULT '' AFTER `vipTime`;
