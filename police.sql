INSERT INTO `addon_account` (name, label, shared) VALUES ('society_police', 'Police', 1);

INSERT INTO `datastore` (name, label, shared) VALUES ('society_police', 'Police', 1);

INSERT INTO `addon_inventory` (name, label, shared) VALUES ('society_police', 'Police', 1);

INSERT INTO `jobs` (name, label) VALUES ('police', 'LSPD');

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('police', 0, 'offduty',    'Off-Duty',         0,    '{}', '{}'),
	('police', 1, 'recruit',    'Rekrut',           1000, '{}', '{}'),
	('police', 2, 'officer',    'Officier',         2000, '{}', '{}'),
	('police', 3, 'sergeant',   'Sergent',          2500, '{}', '{}'),
	('police', 4, 'lieutenant', 'Stvll. Chief',     3000, '{}', '{}'),
	('police', 5, 'boss',       'Chief',            3500, '{}', '{}');
