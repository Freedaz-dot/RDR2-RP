RedEM = exports["redem_roleplay"]:RedEM()

local isInteracting = false


local maxCraftAmountcontrebande = 0


local craftprompt = UipromptGroup:new("Atelier")
Uiprompt:new(0x760A9C6F, "Fabriquer", craftprompt)
craftprompt:setActive(false)




Citizen.CreateThread(function()
    while true do
        Wait(2)
        local playerPos = GetEntityCoords(PlayerPedId())

        -- CREATE GUNPOWDER
        for k, v in pairs(Config.AtelierMoonshine) do
            if #(playerPos - v) < 10.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, v, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v) < Config.DistanceToInteract and not isInteracting then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustPressed(2, 0x760A9C6F) and not isInteracting then 
                    TriggerServerEvent("contrebande:RequestCampMenu", "moonshine")
                end
            end
        end


        for k, v in pairs(Config.AtelierOpium) do
            if #(playerPos - v) < 10.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, v, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v) < Config.DistanceToInteract and not isInteracting then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustPressed(2, 0x760A9C6F) and not isInteracting then 
                    TriggerEvent("contrebande:OpenBossMenu", "opium")
                end
            end
        end

        for k, v in pairs(Config.AlambicMoonshine) do
            if #(playerPos - v.input) < 10.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, v.input, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v.input) < Config.DistanceToInteract and not isInteracting then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustPressed(2, 0x760A9C6F) and not isInteracting then 
                    TriggerEvent("redemrp_inventory:OpenStash", "dep_moo_"..v.name, 3000.0)
                end
            end
            if #(playerPos - v.output) < 10.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, v.output, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v.output) < Config.DistanceToInteract and not isInteracting then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustPressed(2, 0x760A9C6F) and not isInteracting then 
                    TriggerEvent("redemrp_inventory:OpenStash", "ret_moo_"..v.name, 3000.0)
                end
            end
        end

    end
end)




AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    PromptDelete(CraftMenuPrompt)
end)

RegisterNetEvent("contrebande:OpenCampMenu", function(craftingtable, menutype)
    local Position = GetEntityCoords(PlayerPedId())
    local _menutype = menutype
    local playerPed = PlayerPedId()
    Citizen.CreateThread(function()
        while true do
            Wait(100)
            if #(Position - GetEntityCoords(PlayerPedId())) > 1.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                end)
                return
            end
        end
    end)

    
    TriggerEvent("redemrp_menu_base:getData", function(MenuData)
        MenuData.CloseAll()

        local jobgrade = RedEM.GetPlayerData().jobgrade

        local elements = {}
        for k, v in pairs(craftingtable) do
            if k then
                table.insert(elements, {label = v.label, value = k, descriptionimages = v.descriptionimages})
            end
        end

        MenuData.Open('default', GetCurrentResourceName(), 'Camp', {
            title = "Atelier",
            subtext = "Recettes",
            align = 'top-right',
            elements = elements,
        },
        
        function(data, menu)
            MenuData.CloseAll()
            TriggerServerEvent("contrebande:MaxRessourcesAmount", data.current.value)
            Wait(150)
            TriggerEvent("contrebande:SelectCraftingAmount", data.current.value, MenuData, menu)
            --
        end,

        function(data, menu)
            menu.close()
            isInteracting = false
        end)
    end)
end)



RegisterNetEvent("contrebande:OpenBossMenu", function(menutype)
    local Position = GetEntityCoords(PlayerPedId())

    Citizen.CreateThread(function()
        while true do
            Wait(100)
            if #(Position - GetEntityCoords(PlayerPedId())) > 2.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                    isInteracting = false
                end)
                return
            end
        end
    end)

    TriggerEvent("redemrp_menu_base:getData", function(MenuData)
        MenuData.CloseAll()

        local jobgrade = RedEM.GetPlayerData().jobgrade

        local elements = {}


        for k, v in pairs(Config.CraftingsReceipe) do
            if v.type == menutype then
                table.insert(elements, {label = v.label, value = k, descriptionimages = v.descriptionimages})
            end
        end

        MenuData.Open('default', GetCurrentResourceName(), 'craft', {
            title = "contrebande",
            subtext = "C'est chaud",
            align = 'top-right',
            elements = elements,
        },

        function(data, menu)
            MenuData.CloseAll()
            TriggerServerEvent("contrebande:MaxRessourcesAmount", data.current.value)
            Wait(150)
            TriggerEvent("contrebande:SelectCraftingAmount", data.current.value, MenuData, menu)
            --
        end,

        function(data, menu)
            menu.close()
            isInteracting = false
        end)
    end)
end)

RegisterNetEvent("contrebande:CraftingAction")
AddEventHandler("contrebande:CraftingAction", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    FreezeEntityPosition(playerPed, true)
    isInteracting = true
    RequestAnimDict(Config.AnimDict)
    while not HasAnimDictLoaded(Config.AnimDict) do
        Citizen.Wait(50)
    end

    TaskPlayAnim(playerPed, Config.AnimDict, Config.CraftAnim, 4.0, 4.0, -1, 1, 0, true)

    local timer = GetGameTimer() + Config.WorkingTime
    isInteracting = true

    Citizen.CreateThread(function()
        while GetGameTimer() < timer do 
            Wait(0)
        end
        ClearPedTasks(PlayerPedId())
        FreezeEntityPosition(playerPed, false)
        isInteracting = false
    end)    
end)

RegisterNetEvent("contrebande:SelectCraftingAmount")
AddEventHandler("contrebande:SelectCraftingAmount", function(dataType, menuData, menu)
    menuData.CloseAll()
    local Position = GetEntityCoords(PlayerPedId())

    Citizen.CreateThread(function()
        while true do
            Wait(100)
            if #(Position - GetEntityCoords(PlayerPedId())) > 2.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                    isInteracting = false
                end)
                return
            end
        end
    end)


    local elements = {
        { label = "Quantité", 
        value = 0, 
        desc = "Se mettre au travail",
        type = 'slider',
        min = 0,
        max = maxCraftAmountcontrebande 
        },
    }

    menuData.Open('default', GetCurrentResourceName(), 'craft', {
        title = "Atelier",
        subtext = "Choisir la quantité",
        align = 'top-right',
        elements = elements,
    },

    function(data, menu)
        if data.current.label == "Quantité" then
            TriggerServerEvent("contrebande:CraftItem", dataType, menu, data.current.value)
            menu.close()
            isInteracting = false
        end 
    end,

    function(data, menu)
        menu.close()
        isInteracting = false
    end)
end)

RegisterNetEvent("contrebande:client:SetMaxAmount", function(value)
    maxCraftAmountcontrebande = value
end)


--- pop pnj
Citizen.CreateThread(function()
Wait(1000)
for k,v in pairs(Config.PavotNPC) do
    local model = RequestModel(GetHashKey(v.model))

    while not HasModelLoaded(GetHashKey(v.model)) do
        Wait(100)
    end

    local spawnCoords = v.coords
    local ped = CreatePed(GetHashKey(v.model), spawnCoords.x, spawnCoords.y, spawnCoords.z, v.heading, false, true, true, true)
    Citizen.InvokeNative(0x283978A15512B2FE, ped, true)
    SetEntityNoCollisionEntity(PlayerPedId(), ped, false)
    SetEntityCanBeDamaged(ped, false)
    SetEntityInvincible(ped, true)
    Wait(2000)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetModelAsNoLongerNeeded(GetHashKey(v.model))
end
end)
--- zone 
Citizen.CreateThread(function()
    while true do
        Wait(2)
        local playerPos = GetEntityCoords(PlayerPedId())

        for k, v in pairs(Config.PavotNPC) do
            if #(playerPos - v.interact) < Config.DistanceToInteract and not isInteracting then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustPressed(1, 0x760A9C6F) and not isInteracting then 
                    TriggerServerEvent("pavot:checksellingstash", v.stash)
                    -- print 'hit'
                    -- TriggerEvent("pavot:OpenImportMenu", v.stash)
                end
            end
        end

    end
end)


---- menu achat graine

local maxAmountpavot = nil

RegisterNetEvent("pavot:client:SetMaxAmount", function(value)
    maxAmountpavot = value
end)

RegisterNetEvent("pavot:OpenImportMenu", function(sellingtable, type)
    local Position = GetEntityCoords(PlayerPedId())

    Citizen.CreateThread(function()
        while true do
            Wait(100)
            if #(Position - GetEntityCoords(PlayerPedId())) > 2.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                    isInteracting = false
                end)
                return
            end
        end
    end)

    TriggerEvent("redemrp_menu_base:getData", function(MenuData)
        MenuData.CloseAll()
        local elements = {}

        for k, v in pairs(sellingtable) do
            table.insert(elements, {label = "$"..v.price .." "..v.label, value = k, price = v.price})
        end

        MenuData.Open('default', GetCurrentResourceName(), 'craft', {
            title = "Marché",
            subtext = "Acheter",
            align = 'top-right',
            elements = elements,
        },

        function(data, menu)
            menu.close()
            TriggerServerEvent("pavot:checkstash", data.current.value, MenuData, type)
            Wait(200)

            TriggerEvent("pavot:SelectBuyingAmount", data.current.value, MenuData, type)
        end,

        function(data, menu)
            menu.close()
            isInteracting = false
        end)
    end)
end)

RegisterNetEvent("pavot:SelectBuyingAmount")
AddEventHandler("pavot:SelectBuyingAmount", function(dataType, menuData, type)
    menuData.CloseAll()
    local Position = GetEntityCoords(PlayerPedId())

    Citizen.CreateThread(function()
        while true do
            Wait(100)
            if #(Position - GetEntityCoords(PlayerPedId())) > 2.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                    isInteracting = false
                end)
                return
            end
        end
    end)


    local elements = {
        { label = "Quantité", 
        value = 0, 
        desc = "Acheter",
        type = 'slider',
        min = 0,
        max = maxAmountpavot 
        },
    }

    menuData.Open('default', GetCurrentResourceName(), 'buypavot', {
        title = "Acheter",
        subtext = "Choisir la quantité",
        align = 'top-right',
        elements = elements,
    },

    function(data, menu)
        if data.current.label == "Quantité" then
            TriggerServerEvent("pavot:buyItem", dataType, data.current.value, type)
            menu.close()
            isInteracting = false
        end 
    end,

    function(data, menu)
        menu.close()
        isInteracting = false
    end)
end)