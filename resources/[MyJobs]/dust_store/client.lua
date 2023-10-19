RedEM = exports["redem_roleplay"]:RedEM()

local isInteracting = false


local maxCraftAmountstore = 0

local souffreprompt = UipromptGroup:new("Souffre")
Uiprompt:new(0x760A9C6F, "Récolter", souffreprompt)
souffreprompt:setActive(false)

local craftprompt = UipromptGroup:new("Atelier")
Uiprompt:new(0x760A9C6F, "Fabriquer", craftprompt)
craftprompt:setActive(false)


local getjob = false
local getgrade = 0
RegisterNetEvent("dust_job:store")
AddEventHandler("dust_job:store", function(job, grade)
    for k, v in pairs(Config.Jobs) do
        if job == v then
            getjob = true
            getgrade = grade
            StartMission()
        else
            getjob = false
            getgrade = 0
        end
    end
end)


RegisterNetEvent("store:OpenBossMenu", function()
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
            table.insert(elements, {label = v.label, value = k, descriptionimages = v.descriptionimages})
        end

        MenuData.Open('default', GetCurrentResourceName(), 'craft', {
            title = "Cuisine",
            subtext = "Laisse le cuisiner",
            align = 'top-right',
            elements = elements,
        },

        function(data, menu)
            MenuData.CloseAll()
            TriggerServerEvent("store:MaxRessourcesAmount", data.current.value)
            Wait(150)
            TriggerEvent("store:SelectCraftingAmount", data.current.value, MenuData, menu)
            --
        end,

        function(data, menu)
            menu.close()
            isInteracting = false
        end)
    end)
end)

RegisterNetEvent("store:CraftingAction")
AddEventHandler("store:CraftingAction", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    FreezeEntityPosition(playerPed, true)
    isInteracting = true
    RequestAnimDict(Config.AnimDict)
    while not HasAnimDictLoaded(Config.AnimDict) do
        Citizen.Wait(50)
    end

    for k,v in pairs(Config.CraftAnim) do
        TaskPlayAnim(playerPed, Config.AnimDict, v, 4.0, 4.0, -1, 1, 0, true)
    end

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


function StartMission()
    Citizen.CreateThread(function()
        while true do
            print 'rrrrrrr'
            if getjob then
                Wait(2)
                local playerPos = GetEntityCoords(PlayerPedId())

                if #(playerPos - Config.Atelier) < 10.0 then
                    Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, Config.Atelier, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
                end
                if #(playerPos - Config.Atelier) < Config.DistanceToInteract and not isInteracting then
                    print 'rrr'
                    craftprompt:setActiveThisFrame(true)
                    if IsControlJustPressed(2, 0x760A9C6F) and not isInteracting then 
                        TriggerServerEvent("store:RequestBossMenu")
                    end
                end
            end
        end
    end)
end

function SouffreRecolt()
    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    FreezeEntityPosition(playerPed, true)
    RequestAnimDict(Config.RecolteSouffreDict)
    while not HasAnimDictLoaded(Config.RecolteSouffreDict) do
        Citizen.Wait(100)
    end
    TaskPlayAnim(PlayerPedId(), Config.RecolteSouffreDict, Config.RecolteSouffreAnim, 1.0, 1.0, -1, 0, 0, true, 0, false, 0, false)
    local timer = GetGameTimer() + Config.WorkingTime
    isInteracting = true
    Citizen.CreateThread(function()
        while GetGameTimer() < timer do 
            Wait(0)
        end
        ClearPedTasks(playerPed)
		FreezeEntityPosition(playerPed, false)
        isInteracting = false
        TriggerServerEvent('store:AddItem', 'souffre', 1)
    end)
end


AddEventHandler("onResourceStop", function(resourceName)
    if resourceName ~= GetCurrentResourceName() then return end
    PromptDelete(CraftMenuPrompt)
end)

RegisterNetEvent("store:SelectCraftingAmount")
AddEventHandler("store:SelectCraftingAmount", function(dataType, menuData, menu)
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
        max = maxCraftAmountstore 
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
            print("Start crafting" .. dataType .. " " .. data.current.value .. " times")
            TriggerServerEvent("store:CraftItem", dataType, menu, data.current.value)
            menu.close()
            isInteracting = false
        else
            RedEM.Functions.NotifyLeft("Invalid entry!", "Enter a valid ID.", "menu_textures", "menu_icon_alert", 4000)
        end 
    end,

    function(data, menu)
        menu.close()
        isInteracting = false
    end)
end)

RegisterNetEvent("store:client:SetMaxAmount", function(value)
    maxCraftAmountstore = value
end)

