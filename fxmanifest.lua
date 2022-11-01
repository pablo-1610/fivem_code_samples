fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'John Doe <j.doe@example.com>'
description 'This is a showcase script'
version '1.0.0'

files {
    'data/*.json'
}

client_scripts { "src/**/client/*.lua" }
server_scripts { "src/**/server/*.lua" }
shared_scripts { "src/**/shared/*.lua" }

client_script 'src/dev/client.lua'