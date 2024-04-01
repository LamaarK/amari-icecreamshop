name "amari-icecreamshop"
author "Amari Javil"
version "v1.0.0"
description "Player Owned Ice Cream Shop Script by Amari Javil"
fx_version "cerulean"
game "gta5"

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/*.lua',
}

server_scripts {
    'server/server.lua'
}

shared_scripts {
    'config.lua',
}