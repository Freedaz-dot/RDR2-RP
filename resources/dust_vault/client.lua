RedEM = exports["redem_roleplay"]:RedEM()


----- REQUEST LES MODEL ----

Citizen.CreateThread(function()
    RequestModel(Config.SmallVault, true)
    while not RequestModel(Config.SmallVault, true) do
        Citizen.Wait(100)
    end
    Citizen.Wait(100)
    RequestModel(Config.MediumVault, true)
    while not RequestModel(Config.MediumVault, true) do
        Citizen.Wait(100)
    end
    Citizen.Wait(100)
    RequestModel(Config.LargeVault, true)
    while not RequestModel(Config.LargeVault, true) do
        Citizen.Wait(100)
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(1000)
        TriggerServerEvent("dust_vault:server:Askcoords")
    end
end)

RegisterNetEvent("dust_vault:server:getcoords")
AddEventHandler("dust_vault:server:getcoords", function (coords)
    for k,v in pairs(coords) do
        local vaultpos = (v.x, v.y, v.z)
        if #(GetEntityCoords(PlayerPedId()) - vaultpos) < 100.0 then
            print ("ninho")
            TriggerServerEvent("dust_vault:server:AskModel", v)
        end
    end
end)

RegisterNetEvent("dust_vault:server:getmodel")
AddEventHandler("dust_vault:server:getmodel", function (model, heading)
    print (model, heading)
end)

----- CREER OBJET ----- 
RegisterNetEvent('smallvault')
AddEventHandler('smallvault', function() 
    local vault = Config.SmallVault
    local playerPed = PlayerPedId()
    RequestAnimDict(Config.MenuDict)
    while not HasAnimDictLoaded(Config.MenuDict) do
        Citizen.Wait(50)
    end
    for k,v in pairs(Config.MenuAnim) do
        TaskPlayAnim(playerPed, Config.MenuDict, v, 8.0, -8.0, -1, 2, 0, true)
    end
    Citizen.Wait(3000)
    RequestAnimDict(Config.CloseMenuDict)
    while not HasAnimDictLoaded(Config.CloseMenuDict) do
        Citizen.Wait(50)
    end
    for k,v in pairs(Config.CloseMenuAnim) do
        TaskPlayAnim(playerPed, Config.CloseMenuDict, v, 8.0, -8.0, -1, 0, 0, true)
        Citizen.Wait(1000)
    end
    local playerpos = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.5, -1.0)
    local heading = GetEntityHeading(PlayerPedId())
    TriggerServerEvent("dust_vault:server:vaultDB", vault, playerpos, heading) -- Créer le vault dans la db
end, false)