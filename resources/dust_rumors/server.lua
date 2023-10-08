RegisterNetEvent("dust_rumors:server:SendRumor")
AddEventHandler("dust_rumors:server:SendRumor", function(rumorText)
    local _source = source
    print(rumorText)
    local user = RedEM.GetPlayer(_source)
    local nameStr = user.firstname .. user.lastname
    print(nameStr)

    MySQL.update(
        'INSERT INTO rumors (name, rumorText, date) VALUES (@name, @rumorText, @date);',
        {
            name = nameStr,
            rumorText = rumorText,
            date = os.time(),
        },
        function(rowsChanged)
        end
    )

end)
