fx_version 'adamant'

game 'gta5'

description 'Police Job'

version '1.0.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/de.lua',
	'config.lua',
	'server/server.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'config.lua',
	'client/markers.lua'
}

dependencies {
	'es_extended'
}
