fx_version "adamant"
game "gta5"
description "Virusexe | PoliceJob"
version "1.0.0"

server_scripts {
    "@mysql-async/lib/MySQL.lua",
    "@es_extended/locale.lua",
    "server/server.lua",
    "locales/de.lua",
    "config.lua"
}

client_scripts {
    "@es_extended/locale.lua",
    "locales/de.lua",
    "client/markers.lua",
    "config.lua"

    --"client/client.lua",
}
