INSERT INTO `addon_account` (name, label, shared) VALUES ('society_police', 'Police', 1);
INSERT INTO `datastore` (name, label, shared) VALUES ('society_police', 'Police', 1);
INSERT INTO `addon_inventory` (name, label, shared) VALUES ('society_police', 'Police', 1);
INSERT INTO `jobs` (name, label) VALUES ('police','Police');

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police', 0, 'recruit', 	'Rekrut',		1000,	'{}', '{}'),
  	('police', 1, 'officer', 	'Officer',		2000,	'{}', '{}'),
  	('police', 2, 'sergeant', 	'Sergeant',		3000,	'{}', '{}'),
  	('police', 3, 'chief', 		'Chief',		4000,	'{}', '{}'),
  	('police', 4, 'boss',		'Boss',			5000,	'{}', '{}');

INSERT INTO `addon_account` (name, label, shared) VALUES ('society_offduty-police', 'OffDuty-Police', 1);
INSERT INTO `datastore` (name, label, shared) VALUES ('society_offduty-police', 'OffDuty-Police', 1);
INSERT INTO `addon_inventory` (name, label, shared) VALUES ('society_offduty-police', 'OffDuty-Police', 1);
INSERT INTO `jobs` (name, label) VALUES ('offduty-police','Police');

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('offduty-police', 0, 'recruit', 	'Rekrut',		1000,	'{}', '{}'),
  	('offduty-police', 1, 'officer', 	'Officer',		2000,	'{}', '{}'),
  	('offduty-police', 2, 'sergeant', 	'Sergeant',		3000,	'{}', '{}'),
  	('offduty-police', 3, 'chief', 		'Chief',		4000,	'{}', '{}'),
  	('offduty-police', 4, 'boss',		'Boss',			5000,	'{}', '{}');