RedEM = exports["redem_roleplay"]:RedEM()
local isMining = false
local isDeposit = false
local ressourcePointIndexForMining = nil
local isInBossMenu = false

--- Définir si le joueur est mineur 
AddEventHandler("global:CheckPlayerJob", function(job, jobgrade)
    Citizen.CreateThread(function()
        local PlayerData = RedEM.GetPlayerData()
        while RedEM.GetPlayerData().isLoggedIn ~= true do 
            Wait(1000)
            if job == "mineur" then
                startMission()
                if jobgrade == 2 then
                    if jobgrade == 3 then
                        patronUpdate() 
                        print("SetPatronUpdate")    
                    end 
                end
            end
        end
        if RedEM.GetPlayerData().isLoggedIn 
        then 
            if job == "mineur" then
                startMission()            
                if jobgrade == 2 then
                    if jobgrade == 3 then
                        patronUpdate()     
                        print("SetPatronUpdate") 
                    end
                end
            end
        end
    end)
end)


-- VA MINER   
function startMission()
    GetRandomRessourcePoint()
    Citizen.CreateThread(function() --- MINERAI
        while true do
            Wait(0)
            local playerPos = GetEntityCoords(PlayerPedId())
            if #(playerPos - Config.RessourcesPoints[ressourcePointIndexForMining]) < 6.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173,-1795314153, Config.RessourcesPoints[ressourcePointIndexForMining].x, Config.RessourcesPoints[ressourcePointIndexForMining].y, Config.RessourcesPoints[ressourcePointIndexForMining].z - 1.0, 0, 0, 0, 0, 0, 0, Config.DistanceToInteract, Config.DistanceToInteract, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0)
                local playerpos = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 1.5, 0)
                -- Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, playerpos.x, playerpos.y, playerpos.z - 1.0, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0)
                temprock = CreateObject(GetHashKey("old_hen_rock_02"), playerpos.x, playerpos.y, playerpos.z, false, true, true)
                SetEntityHeading(temprock, tonumber(heading))
                PlaceObjectOnGroundProperly(temprock)
            end
            if #(playerPos - Config.RessourcesPoints[ressourcePointIndexForMining]) < Config.DistanceToInteract and not isMining then
                DrawTxt(Config.MsgGathering, 0.50, 0.90, 0.45, 0.45, true, 255, 255, 255, 255, true)
                if IsControlJustPressed(2, 0x4AF4D473) and not isMining then 
                    StartMining()
                end
            else end
        end
    end)
    Citizen.CreateThread(function() --- CHARBON
        while true do
            Wait(0)
            local playerPos = GetEntityCoords(PlayerPedId())
            for k, v in ipairs(Config.MinerJobCoalPos) do
                if #(playerPos - v) < 6.0 then
                    Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v.x, v.y, v.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
                end
                if #(playerPos - v) < Config.DistanceToInteract and not isMining then
                    DrawTxt(Config.MsgGathering, 0.50, 0.90, 0.45, 0.45, true, 255, 255, 255, 255, true)
                    if IsControlJustPressed(2, 0x4AF4D473) and not isMining then 
                        StartMiningCoal()
                    end
                else end
            end
        end
    end)
    Citizen.CreateThread(function() --- DEPOT
        while true do
            Wait(0)
            local playerPos = GetEntityCoords(PlayerPedId())
            for k, v in ipairs(Config.MinerJobDepositPos) do
                if #(playerPos - v) < 6.0 then
                    Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v.x, v.y, v.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
                end
                if #(playerPos - v) < Config.DistanceToInteract then
                    DrawTxt(Config.MsgDeposit, 0.50, 0.90, 0.45, 0.45, true, 255, 255, 255, 255, true)
                    if IsControlJustPressed(2, 0x4AF4D473) then 
                        TriggerServerEvent('mineur:server:mineur:depStash')
                    end
                else end
            end
        end
    end)
end

function contremaitre() --- RETRAIT
    while true do    
        Wait(0)
        local playerPos = GetEntityCoords(PlayerPedId())
        for k, v in ipairs(Config.MinerJobWithdrawalPos) do
            if #(playerPos - v) < 6.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v.x, v.y, v.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.1, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v) < Config.DistanceToInteract then
                DrawTxt(Config.MsgRetrieve, 0.50, 0.90, 0.45, 0.45, true, 255, 255, 255, 255, true)
                if IsControlJustPressed(2, 0x4AF4D473) then 
                    TriggerServerEvent('mineur:server:mineur:retStash')
                end
            else end
        end
    end
end


function patronUpdate()
    while true do
        Wait(0)
        local playerPos = GetEntityCoords(PlayerPedId())    
        for k, v in ipairs(Config.GetVirginContractPos) do
            if #(playerPos - v) < 6.0 then
                Citizen.InvokeNative(0x2A32FAA57B937173, -1795314153, v.x, v.y, v.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 128, 64, 0, 64, 0, 0, 2, 0, 0, 0, 0) --DrawMarker
            end
            if #(playerPos - v) < Config.DistanceToInteract and not isInBossMenu then
                DrawTxt("Press suppr to acces Bossmenu", 0.50, 0.90, 0.45, 0.45, true, 255, 255, 255, 255, true)
                if IsControlJustPressed(2, 0x4AF4D473) then 
                    TriggerServerEvent('mineur:RequestBossMenu')
                    isInBossMenu = true
                end
            else end
        end
    end
end

local blip
function GetRandomRessourcePoint()
    if blip ~= nil then 
        RemoveBlip(blip)
    end

    ressourcePointIndexForMining = math.random(1, #Config.RessourcesPoints)
    blip = Citizen.InvokeNative(0x554d9d53f696d002, Config.PointSprite, Config.RessourcesPoints[ressourcePointIndexForMining].x, Config.RessourcesPoints[ressourcePointIndexForMining].y, Config.RessourcesPoints[ressourcePointIndexForMining].z)
end

-- ACTION DE MINER
function StartMining()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    started = false
    pressing = false
    FreezeEntityPosition(playerPed, true)
    TaskStartScenarioInPlace(playerPed, GetHashKey(Config.MiningAnim), Config.WorkingTime, true, false, false, false)
    local timer = GetGameTimer() + Config.WorkingTime
    isMining = true
    Citizen.CreateThread(function()
        while GetGameTimer() < timer do 
            Wait(0)
        end
        ClearPedTasksImmediately(PlayerPedId())
		FreezeEntityPosition(playerPed, false)
        isMining = false
        DeleteEntity(temprock)
        GivePlayerRessource()
        GetRandomRessourcePoint()
    end)
end

---- RECOLTE CHARBON
function StartMiningCoal()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    started = false
    pressing = false
    FreezeEntityPosition(playerPed, true)
    TaskStartScenarioInPlace(playerPed, GetHashKey(Config.MiningAnim), Config.WorkingTimeCoal, true, false, false, false)
    local timer = GetGameTimer() + Config.WorkingTimeCoal
    isMining = true
    Citizen.CreateThread(function()
        while GetGameTimer() < timer do 
            Wait(0)
        end
        ClearPedTasksImmediately(PlayerPedId())
		FreezeEntityPosition(playerPed, false)
        isMining = false
        GivePlayerCharbon()
    end)
end


function GivePlayerRessource()
    local rand = math.random(1,100)
    if rand > 70 then
        TriggerServerEvent('mineur:addferbrut')
    elseif rand <= 35 then
        TriggerServerEvent('mineur:addcuivrebrut')
    else
        TriggerServerEvent('mineur:addplombbrut')
    end
end

function GivePlayerCharbon()
    TriggerServerEvent('mineur:addcharbon')
end

-- DRAW TEXT ON SCREEEN w/ BACKGROUND
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
    local str = CreateVarString(10, "LITERAL_STRING", str)
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
	SetTextCentre(centre)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
	Citizen.InvokeNative(0xADA9255D, 1); -- Font
    DisplayText(str, x, y)

    local lineLength = string.len(str) / 100 * 0.70
    DrawTexture("boot_flow", "selection_box_bg_1d", x, y + 0.018, lineLength, 0.07, 0, 0, 0, 0, 200)
end


function DrawTexture(textureStreamed,textureName,x, y, width, height,rotation,r, g, b, a, p11)
    if not HasStreamedTextureDictLoaded(textureStreamed) then
       RequestStreamedTextureDict(textureStreamed, false);
    else
        DrawSprite(textureStreamed, textureName, x, y, width, height, rotation, r, g, b, a, p11);
    end
end

RegisterNetEvent("mineur:OpenBossMenu", function()
    local Position = GetEntityCoords(PlayerPedId())
    print("mineur:OpenBossMenu triggered")

    Citizen.CreateThread(function()
        while true do
            Wait(250)
            if #(Position - GetEntityCoords(PlayerPedId())) > 2.5 then
                TriggerEvent("redemrp_menu_base:getData", function(call)
                    call.CloseAll()
                    isInBossMenu = false
                end)
                return
            end
        end
    end)

    TriggerEvent("redemrp_menu_base:getData", function(MenuData)
        MenuData.CloseAll()

        local jobgrade = RedEM.GetPlayerData().jobgrade

        local elements = {}

        if jobgrade > 2 then
            table.insert(elements, {label = "Contrat pour mineur", value = 'virginMineurContrat', desc = "Retirer un contrat vierge de mineur"})
        else
            return RedEM.Functions.NotifyRight("You don't have any options here.", 3000)
        end

        MenuData.Open('default', GetCurrentResourceName(), 'craft', {
            title = "Mineur Bossmenu",
            subtext = "Job Interaction for Mineur",
            align = 'top-left',
            elements = elements,
        },

        function(data, menu)
            MenuData.CloseAll()
            -- Fonction pour retirer un contrat
            print('Call fonction pour contrat vierge')
            TriggerServerEvent('dust_contract:AddVirginContrat')
        end,

        function(data, menu)
            menu.close()
        end)
    end)
end)