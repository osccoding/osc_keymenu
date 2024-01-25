Keymenu = function()
    local key = {}

    for i = 1, #Config.Keys do
        key[i] = {
            title = Config.Keys[i].title,
            description = Config.Keys[i].description,
            icon = Config.Keys[i].icon,
            iconAnimation = Config.Keys[i].iconAnimation
        }
    end

    lib.registerContext({
        id = 'keymenu',
        title = 'Key Menu',
        options = key
    })

    lib.showContext('keymenu')
end

RegisterCommand(Config.Command, function()
    Keymenu()
end, false)

RegisterKeyMapping(Config.Command, 'Key Menu', 'keyboard', Config.KeyOpen)