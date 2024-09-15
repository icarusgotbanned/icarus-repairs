fx_version 'adamant'
game 'gta5'
lua54 'yes' 

ui_page "ui/index.html"
files {
	"ui/index.html",
	"ui/sounds/*.ogg",
}

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/main.lua'
}

shared_scripts {
        '@ox_lib/init.lua',
    'config.lua'

}

server_scripts {
    'server/main.lua',

}