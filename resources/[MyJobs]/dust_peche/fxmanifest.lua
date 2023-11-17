fx_version "adamant"
games {"rdr3"}
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

shared_scripts {
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
}

client_scripts {
    'client/client_js.js',
    'client/client.lua',
}

server_scripts {
    'server/server.lua',
}

exports {
    'GET_TASK_FISHING_DATA',
    'SET_TASK_FISHING_DATA',
    'GET_TASK_FISHING_DATA_EXTRA',
    'VERTICAL_PROBE'
}
