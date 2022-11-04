fx_version 'cerulean'
author 'marcinhu#0001'
Description 'm-Tequila'
game 'gta5'

shared_scripts { 
    "configs/**.lua",
}

server_script { 
    "@oxmysql/lib/MySQL.lua",
    "server/**.lua",
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    "client/**.lua",
}

escrow_ignore {
    'configs/**.lua',
    'client/**.lua',
    'server/**.lua',
    'Doorlocks/**.lua',
    'images/**',
}

lua54 'yes'