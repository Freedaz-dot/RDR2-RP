RedEM = exports["redem_roleplay"]:RedEM()

local ClothingCamera = nil
local c_zoom = 2.8
local c_offset = -0.15
local Outfits_tab = {}
local CurrentPrice = 0

MenuData = {}
TriggerEvent("redemrp_menu_base:getData", function(call)
    MenuData = call
end)


Citizen.CreateThread(function()
    for k,v in pairs(Config.Hat) do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v)
        SetBlipSprite(blip, 990667866)
        SetBlipScale(blip, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, string.format("Chapelier"))
    end
    for k,v in pairs(Config.Mask) do
        local blip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v)
        SetBlipSprite(blip, -2034972265)
        SetBlipScale(blip, 0.2)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, string.format("Masques"))
    end
end)


function OpenClothingMenu()
    MenuData.CloseAll()
    local elements = {}

    for v, k in pairsByKeys(Config.MenuElements) do

        table.insert(elements, {
            label = k.label or v,
            value = v,
            category = v,
            desc = "Se changer"
        })
    end

    table.insert(elements, {
        label = Config.Label["save"] or "Save",
        value = "save",
        desc = "Valider $"..CurrentPrice
    })

    MenuData.Open('default', GetCurrentResourceName(), 'clothing_store_menu', {

        title = 'Tailleur',

        subtext = 'Se Changer',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value ~= "save" then
            OpenCateogry(data.current.value)
        else
            destory()
            menu.close()
            saveOutfit = true
            TriggerServerEvent("rdr_clothes_store:Save", ClothesCache, CurrentPrice)
            OldClothesCache = {}

        end

    end, function(data, menu)
        menu.close()
        OldClothesCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end)
end

function OpenCateogry(menu_catagory)
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
        for v, k in pairsByKeys(Config.MenuElements[menu_catagory].category) do
            if clothes_list["male"][k] ~= nil then
            local category = clothes_list["male"][k]
            if ClothesCache[k] == nil then
                ClothesCache[k] = {}
                ClothesCache[k].model = 0
                ClothesCache[k].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label[k].. " ($" .. Config.Price[k]..")" or v,
                value = ClothesCache[k].model or 0,
                category = k,
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel(k, ClothesCache[k].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label[k] .. " Couleur" or v,
                value = ClothesCache[k].texture or 1,
                category = k,
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel(k, ClothesCache[k].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
        end
        end

    else
        local a = 1
        for v, k in pairsByKeys(Config.MenuElements[menu_catagory].category) do
            if clothes_list["female"][k] ~= nil then
            local category = clothes_list["female"][k]
            if ClothesCache[k] == nil then
                ClothesCache[k] = {}
                ClothesCache[k].model = 0
                ClothesCache[k].texture = 0
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k.." Style")
            end
            table.insert(elements, {
                label = Config.Label[k].. " ($" .. Config.Price[k]..")" or v,
                value = ClothesCache[k].model or 0,
                category = k,
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options,
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel(k, ClothesCache[k].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label[k] .. " Couleur" or v,
                value = ClothesCache[k].texture or 1,
                category = k,
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel(k, ClothesCache[k].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
        end
        end

    end
    MenuData.Open('default', GetCurrentResourceName(), 'clothing_store_menu_category', {

        title = 'Tailleur',

        subtext = 'Options',

        align = 'top-left',

        elements = elements

    }, function(data, menu)

    end, function(data, menu)
        menu.close()
        OpenClothingMenu()
    end, function(data, menu)
        MenuUpdateClothes(data, menu)
    end)
end

function MenuUpdateClothes(data, menu)

    if data.current.change_type == "model" then
        if ClothesCache[data.current.category].model ~= data.current.value then
            ClothesCache[data.current.category].texture = 1
            ClothesCache[data.current.category].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel(data.current.category, data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel(data.current.category, data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel(data.current.category, data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePrice() then
                CurrentPrice = CalculatePrice()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            Change(data.current.value, data.current.category, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        print(ClothesCache[data.current.category].texture)
        if ClothesCache[data.current.category].texture ~= data.current.value then
            ClothesCache[data.current.category].texture = data.current.value
            Change(data.current.value, data.current.category, data.current.change_type)
        end
    end

end
function GetMaxTexturesForModel(category, model)
    -- print(model)
    -- print(category)
    if model == 0 then
        model = 1
    end
    if IsPedMale(PlayerPedId()) then
        return #clothes_list["male"][category][model]
    else
        return #clothes_list["female"][category][model]
    end
end

function ClothingLight()
    Citizen.CreateThread(function()
        while ClothingCamera do

            Wait(0)
            if IsDisabledControlPressed(0, 0x06052D11) then
                local heading = GetEntityHeading(PlayerPedId())
                SetEntityHeading(PlayerPedId(), heading + 2)
            end
            if IsDisabledControlPressed(0, 0x110AD1D2) then
                local heading = GetEntityHeading(PlayerPedId())
                SetEntityHeading(PlayerPedId(), heading - 2)
            end

            if IsDisabledControlPressed(0, 0xFD0F0C2C) then
                if c_zoom + 0.25 < 2.8 and c_zoom + 0.25 > 0.7 then
                    c_zoom = c_zoom + 0.25
                    camera(c_zoom, c_offset)
                end
            end

            if IsDisabledControlPressed(0, 0xCC1075A7) then
                if c_zoom - 0.25 < 2.8 and c_zoom - 0.25 > 0.7 then
                    c_zoom = c_zoom - 0.25
                    camera(c_zoom, c_offset)
                end
            end
            if IsDisabledControlPressed(0, 0x53296B75) then
                local cursor_y = -0.5 + GetDisabledControlNormal(0, `INPUT_CURSOR_Y`)
                if c_offset - cursor_y / 7 < 1.2 and c_offset - cursor_y / 7 > -1.0 then
                    c_offset = c_offset - cursor_y / 7
                    camera(c_zoom, c_offset)
                end

            end

        end
    end)
    Citizen.CreateThread(function()
        while ClothingCamera do
            Wait(0)
            DisableAllControlActions(0)
            DisableAllControlActions(1)
            DisableAllControlActions(2)
            local coords = GetEntityCoords(PlayerPedId())
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 5.5, 5.0)
        end
    end)
end

RegisterNetEvent('rdr_clothes_store:OpenClothingMenu')
AddEventHandler('rdr_clothes_store:OpenClothingMenu', function(ClothesComponents)
    ClothesCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if ClothesCache[k] == nil then
                ClothesCache[k] = {}
                ClothesCache[k].model = 0
                ClothesCache[k].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if ClothesCache[k] == nil then
                ClothesCache[k] = {}
                ClothesCache[k].model = 0
                ClothesCache[k].texture = 0
            end
        end

    end
    OldClothesCache = deepcopy(ClothesCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenClothingMenu()
end)

function Change(id, category, change_type)
    if id < 1 then
        if category == "cloaks" then
            local category = GetHashKey("ponchos")
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), category, 0)
            NativeUpdatePedVariation(PlayerPedId())
        else
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey(category), 0)
            NativeUpdatePedVariation(PlayerPedId())
        end
        if category == "pants" or category == "boots" then
            NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_LOWER"),
                false, true, true)
        end
        if category == "shirts_full" then
            NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_UPPER"),
                false, true, true)
        end
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"][category][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"][category][id][1].drawable
                    local albedo = clothes_list["male"][category][id][1].albedo
                    local normal = clothes_list["male"][category][id][1].normal
                    local material = clothes_list["male"][category][id][1].material
                    local palette = clothes_list["male"][category][id][1].palette
                    local tint0 = clothes_list["male"][category][id][1].tint0
                    local tint1 = clothes_list["male"][category][id][1].tint1
                    local tint2 = clothes_list["male"][category][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"][category][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"][category][ClothesCache[category].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"][category][ClothesCache[category].model][id].drawable
                    local albedo = clothes_list["male"][category][ClothesCache[category].model][id].albedo
                    local normal = clothes_list["male"][category][ClothesCache[category].model][id].normal
                    local material = clothes_list["male"][category][ClothesCache[category].model][id].material
                    local palette = clothes_list["male"][category][ClothesCache[category].model][id].palette
                    local tint0 = clothes_list["male"][category][ClothesCache[category].model][id].tint0
                    local tint1 = clothes_list["male"][category][ClothesCache[category].model][id].tint1
                    local tint2 = clothes_list["male"][category][ClothesCache[category].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"][category][ClothesCache[category].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"][category][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"][category][id][1].drawable
                    local albedo = clothes_list["female"][category][id][1].albedo
                    local normal = clothes_list["female"][category][id][1].normal
                    local material = clothes_list["female"][category][id][1].material
                    local palette = clothes_list["female"][category][id][1].palette
                    local tint0 = clothes_list["female"][category][id][1].tint0
                    local tint1 = clothes_list["female"][category][id][1].tint1
                    local tint2 = clothes_list["female"][category][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"][category][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"][category][ClothesCache[category].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"][category][ClothesCache[category].model][id].drawable
                    local albedo = clothes_list["female"][category][ClothesCache[category].model][id].albedo
                    local normal = clothes_list["female"][category][ClothesCache[category].model][id].normal
                    local material = clothes_list["female"][category][ClothesCache[category].model][id].material
                    local palette = clothes_list["female"][category][ClothesCache[category].model][id].palette
                    local tint0 = clothes_list["female"][category][ClothesCache[category].model][id].tint0
                    local tint1 = clothes_list["female"][category][ClothesCache[category].model][id].tint1
                    local tint2 = clothes_list["female"][category][ClothesCache[category].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"][category][ClothesCache[category].model][id].hash, false, true, true)
                end
            end
        end

    end
    -- elseif is_mp == false then
    --     if id < 1 then
    --         if IsPedMale(PlayerPedId()) then
    --             local drawable = clothes_list["male"][category][ClothesCache[category].model][id].drawable
    --             local albedo = clothes_list["male"][category][ClothesCache[category].model][id].albedo
    --             local normal = clothes_list["male"][category][ClothesCache[category].model][id].normal
    --             local material = clothes_list["male"][category][ClothesCache[category].model][id].material
    --             local palette = clothes_list["male"][category][ClothesCache[category].model][id].palette
    --             local tint0 = clothes_list["male"][category][ClothesCache[category].model][id].tint0
    --             local tint1 = clothes_list["male"][category][ClothesCache[category].model][id].tint1
    --             local tint2 = clothes_list["male"][category][ClothesCache[category].model][id].tint2
    --             UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
    --         else
    --             local drawable = clothes_list["female"][category][ClothesCache[category].model][id].drawable
    --             local albedo = clothes_list["female"][category][ClothesCache[category].model][id].albedo
    --             local normal = clothes_list["female"][category][ClothesCache[category].model][id].normal
    --             local material = clothes_list["female"][category][ClothesCache[category].model][id].material
    --             local palette = clothes_list["female"][category][ClothesCache[category].model][id].palette
    --             local tint0 = clothes_list["female"][category][ClothesCache[category].model][id].tint0
    --             local tint1 = clothes_list["female"][category][ClothesCache[category].model][id].tint1
    --             local tint2 = clothes_list["female"][category][ClothesCache[category].model][id].tint2
    --             UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
    --         end
    --     else
    --         if IsPedMale(PlayerPedId()) then
    --             if change_type == "model" then
    --                 NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"][category][id][1].hash, false, true,
    --                     true)
    --             else
    --                 NativeSetPedComponentEnabled(PlayerPedId(),
    --                     clothes_list["male"][category][ClothesCache[category].model][id].hash, false, true, true)
    --             end

    --         else
    --             if change_type == "model" then
    --                 NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"][category][id][1].hash, false, true,
    --                     true)
    --             else
    --                 NativeSetPedComponentEnabled(PlayerPedId(),
    --                     clothes_list["female"][category][ClothesCache[category].model][id].hash, false, true, true)
    --             end
    --         end

    --     end
    
    -- end
    
end

RegisterNetEvent('rdr_clothes_store:ApplyClothes')
AddEventHandler('rdr_clothes_store:ApplyClothes', function(ClothesComponents, Target)
    Citizen.CreateThread(function()
        local _Target = Target or PlayerPedId()
        local LoadingCheck = false
        if type(ClothesComponents) ~= "table" then
            return
        end
        if next(ClothesComponents) == nil then
            return
        end
        ClothesCache = ClothesComponents
        for k, v in pairs(ClothesComponents) do
            if v ~= nil then
                local id = tonumber(v.model)
                if id >= 1 then
                    if IsPedMale(_Target) then
                        if clothes_list["male"][k] ~= nil then
                            if clothes_list["male"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    if clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == true then
                                        NativeSetPedComponentEnabled(_Target, tonumber(
                                            clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].hash), false,
                                            true, true)
                                    elseif clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == false then
                                        local drawable = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].drawable
                                        local albedo = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].albedo
                                        local normal = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].normal
                                        local material = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].material
                                        local palette = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].palette
                                        local tint0 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint0
                                        local tint1 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint1
                                        local tint2 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint2
                                        UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                                    end
                                end
                            end
                        end
                    else
                        if clothes_list["female"][k] ~= nil then
                            if clothes_list["female"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    if clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == true then
                                    NativeSetPedComponentEnabled(_Target, tonumber(
                                        clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].hash), false,
                                        true, true)
                                    elseif clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == false then
                                        local drawable = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].drawable
                                        local albedo = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].albedo
                                        local normal = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].normal
                                        local material = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].material
                                        local palette = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].palette
                                        local tint0 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint0
                                        local tint1 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint1
                                        local tint2 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint2
                                        UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                                    end
                                end
                            end

                        end
                    end
                else
                    if category == "cloaks" then
                        local category = GetHashKey("ponchos")
                        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), category, 0)
                        NativeUpdatePedVariation(PlayerPedId())
            
                    elseif category == "pants" or category == "boots" then
                        NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_LOWER"),
                            false, true, true)
                    elseif category == "shirts_full" then
                        NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_UPPER"),
                            false, true, true)
                    else
                        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey(category), 0)
                        NativeUpdatePedVariation(PlayerPedId())
                    end
                end
            end
        end
    end)
end)

function destory()
    SetCamActive(ClothingCamera, false)
    RenderScriptCams(false, true, 500, true, true)
    DisplayHud(true)
    DisplayRadar(true)
    DestroyAllCams(true)
    ClothingCamera = nil
    -- cameraprompt:setActive(false)
end

-- local cameraprompt = UipromptGroup:new("Camera")
-- Uiprompt:new({0x7065027D,0xCEFD9220} , "GaucheDroite", cameraprompt)
-- Uiprompt:new(0x3076E97C , "Zoom", cameraprompt)
-- Uiprompt:new(0xF84FA74F , "HautBas", cameraprompt)
-- cameraprompt:setActive(false)


-- Citizen.CreateThread(function()
--     while true do
--         Wait(1)
--             cameraprompt:setActiveThisFrame(true)
--     end
-- end)

function camera(zoom, offset)
    -- cameraprompt:setActive(true)
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local heading = GetEntityHeading(playerPed) + 90.0
    local zoomOffset = zoom
    local camOffset = offset
    local angle = heading * math.pi / 180.0
    local theta = {
        x = math.cos(angle),
        y = math.sin(angle)
    }
    local pos = {
        x = coords.x + (zoomOffset * theta.x),
        y = coords.y + (zoomOffset * theta.y)
    }
    if not ClothingCamera then
        DestroyAllCams(true)
        ClothingCamera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, coords.z + camOffset, 300.00,
            0.00, 0.00, 40.00, false, 0)
        local pCoords = GetEntityCoords(PlayerPedId())
        PointCamAtCoord(ClothingCamera, pCoords.x, pCoords.y, pCoords.z + camOffset)
        SetCamActive(ClothingCamera, true)
        RenderScriptCams(true, true, 1000, true, true)
        -- DisplayHud(false)
        DisplayRadar(false)
        ----print("Camera Created")
    else
        local ClothingCamera2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, coords.z + camOffset,
            300.00, 0.00, 0.00, 40.00, false, 0)
        SetCamActive(ClothingCamera2, true)
        SetCamActiveWithInterp(ClothingCamera2, ClothingCamera, 750)
        local pCoords = GetEntityCoords(PlayerPedId())
        PointCamAtCoord(ClothingCamera2, pCoords.x, pCoords.y, pCoords.z + camOffset)
        Wait(150)
        SetCamActive(ClothingCamera, false)
        DestroyCam(ClothingCamera)
        ClothingCamera = ClothingCamera2
    end

end

Citizen.CreateThread(function()
    for k, v in pairs(Config.Zones) do
        local blip = N_0x554d9d53f696d002(1664425300, v)
        SetBlipSprite(blip, Config.BlipSprite, 1)
        SetBlipScale(blip, Config.BlipScale)
        Citizen.InvokeNative(0x9CB1A1623062F402, blip, Config.BlipName)
    end
end)

RegisterNetEvent('rdr_clothes_store:OpenOutfits')
AddEventHandler('rdr_clothes_store:OpenOutfits', function()
    TriggerServerEvent('rdr_clothes_store:getOutfits')
end)

RegisterNetEvent('rdr_clothes_store:putInTable')
AddEventHandler('rdr_clothes_store:putInTable', function(outfit)
    Outfits_tab = {}
    for i, k in pairs(outfit) do
        table.insert(Outfits_tab, {
            name = outfit[i].name
        })
    end
    Outfits()
end)

function Outfits()
    local elements_outfits = {}

    if Outfits_tab ~= nil then
        for j, z in pairs(Outfits_tab) do
            table.insert(elements_outfits, {
                label = Outfits_tab[j].name,
                value = Outfits_tab[j].name,
                desc = "Choisir sa tenue"
            })
        end
    end

    MenuData.CloseAll()

    MenuData.Open('default', GetCurrentResourceName(), 'outfits_menu', {

        title = 'Tailleur',

        subtext = 'Garde-robe',

        align = 'top-left',

        elements = elements_outfits

    }, function(data, menu)
        OutfitsManage(data.current.value)
    end, function(data, menu)

        menu.close()

    end)

end
local elements_outfits_manage = {{
    label = "Enfiler cette tenue",
    value = "SetOutfits",
    desc = "La classe"
}, {
    label = "Retirer cette tenue",
    value = "DeleteOutfit",
    desc = "Moins classe"
}}
function OutfitsManage(outfit)

    MenuData.CloseAll()
    MenuData.Open('default', GetCurrentResourceName(), 'outfits_menu_manage', {

        title = 'Tailleur',

        subtext = 'Se Changer',

        align = 'top-left',

        elements = elements_outfits_manage

    }, function(data, menu)
        menu.close()
        TriggerServerEvent('rdr_clothes_store:' .. data.current.value, outfit)
    end, function(data, menu)

        Outfits()

    end)

end

local active = false
local target

local clothesprompt = UipromptGroup:new("Tailleur")
Uiprompt:new(0x760A9C6F, "Acheter des vêtements", clothesprompt)
clothesprompt:setActive(false)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.Zones) do
            local dist = Vdist(coords, v)
            if dist < 2 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 2)
                end
            end
        end

    end
end)

 local active2 = false
 local target2

 local cloakprompt = UipromptGroup:new("Tailleur")
Uiprompt:new(0x760A9C6F, "Changer de tenue", cloakprompt)
cloakprompt:setActive(false)
 Citizen.CreateThread(function()
     while true do
         Wait(1)
         local playerPed = PlayerPedId()
         local coords = GetEntityCoords(playerPed)
         for k,v in pairs(Config.Cloakroom) do
             local dist =  Vdist(coords, v)
             if dist < 2 then
                TriggerEvent('dust_presskey', "Appuyez sur G")

                if IsControlJustReleased(0, 0x760A9C6F) then
                     TriggerEvent('rdr_clothes_store:OpenOutfits')
                end
             end
         end
     end
end)

exports('GetClothesComponents', function()
    return {ComponentsClothesMale, ComponentsClothesFemale}
end)

exports('GetClothesCache', function(name)
    return ClothesCache
end)

exports('GetClothesComponentId', function(name)
    return ClothesCache[name]
end)

exports('GetClothesCurrentComponentHash', function(name)
    if ClothesCache[name] == nil then
        return 0
    end
    local texture = ClothesCache[name].texture
    local model = ClothesCache[name].model
    if model == 0 or texture == 0 then
        return 0
    end
    local hash
    if IsPedMale(PlayerPedId()) then
        if clothes_list["male"][name] ~= nil then
            hash = clothes_list["male"][name][model][texture].hash
        end
    else
        if clothes_list["female"][name] ~= nil then
            hash = clothes_list["female"][name][model][texture].hash
        end
    end
    return hash
end)



RegisterNetEvent("redemrp_inventory:removeclothes", function()
    for category, _ in pairs(Config.Label) do
        if category == "cloaks" then
            local category = GetHashKey("ponchos")
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), category, 0)
            NativeUpdatePedVariation(PlayerPedId())

        elseif category == "pants" or category == "boots" then
            NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_LOWER"),
                false, true, true)
        elseif category == "shirts_full" then
            NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_UPPER"),
                false, true, true)
        else
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey(category), 0)
            NativeUpdatePedVariation(PlayerPedId())
        end
    end
end)


---- chapeaux

local hatprompt = UipromptGroup:new("Chapelier")
Uiprompt:new(0x760A9C6F, "Acheter des chapeaux", hatprompt)
hatprompt:setActive(false)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.Hat) do
            local dist = Vdist(coords, v)
            if dist < 2 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 3)
                end
            end
        end

    end
end)



RegisterNetEvent('rdr_clothes_store:OpenHatMenu')
AddEventHandler('rdr_clothes_store:OpenHatMenu', function(ClothesComponents)
    HatCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if HatCache["hats"] == nil then
                HatCache["hats"] = {}
                HatCache["hats"].model = 0
                HatCache["hats"].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if HatCache["hats"] == nil then
                HatCache["hats"] = {}
                HatCache["hats"].model = 0
                HatCache["hats"].texture = 0
            end
        end

    end
    OldHatCache = deepcopy(HatCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenHatMenu()
end)


function OpenHatMenu()
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
            if clothes_list["male"]["hats"] ~= nil then
            local category = clothes_list["male"]["hats"]
            if HatCache["hats"] == nil then
                HatCache["hats"] = {}
                HatCache["hats"].model = 0
                HatCache["hats"].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label["hats"].. " ($" .. Config.Price["hats"]..")" or v,
                value = HatCache["hats"].model or 0,
                category = "hats",
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel("hats", HatCache["hats"].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label["hats"] .. " Couleur" or v,
                value = HatCache["hats"].texture or 1,
                category = "hats",
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel("hats", HatCache["hats"].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"]["hats"] ~= nil then
        local category = clothes_list["female"]["hats"]
        if HatCache["hats"] == nil then
            HatCache["hats"] = {}
            HatCache["hats"].model = 0
            HatCache["hats"].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label["hats"].. " ($" .. Config.Price["hats"]..")" or v,
            value = HatCache["hats"].model or 0,
            category = "hats",
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel("hats", HatCache["hats"].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label["hats"] .. " Couleur" or v,
            value = HatCache["hats"].texture or 1,
            category = "hats",
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel("hats", HatCache["hats"].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'hat_store_menu_category', {

        title = 'Chapelier',

        subtext = 'Acheter des chapeaux',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = HatCache["hats"].model
            info.texture = HatCache["hats"].texture
            TriggerServerEvent("rdr_clothes_store:GiveHat", info, CurrentPrice)
            OldHatCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldHatCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateHat(data, menu)
    end)
end


function MenuUpdateHat(data, menu)

    if data.current.change_type == "model" then
        if HatCache["hats"].model ~= data.current.value then
            HatCache["hats"].texture = 1
            HatCache["hats"].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel("hats", data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel("hats", data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel("hats", data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceHat() then
                CurrentPrice = CalculatePriceHat()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeHat(data.current.value, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        if HatCache["hats"].texture ~= data.current.value then
            HatCache["hats"].texture = data.current.value
            ChangeHat(data.current.value, data.current.change_type)
        end
    end

end

local haton = false
RegisterNetEvent("redemrp_clothes_store:puthat", function(model, texture)
    if haton then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("hats"), 0)
        NativeUpdatePedVariation(PlayerPedId())
        haton = false
    else
        if IsPedMale(PlayerPedId()) then
            if clothes_list["male"]["hats"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["male"]["hats"][model][texture].drawable
                local albedo = clothes_list["male"]["hats"][model][texture].albedo
                local normal = clothes_list["male"]["hats"][model][texture].normal
                local material = clothes_list["male"]["hats"][model][texture].material
                local palette = clothes_list["male"]["hats"][model][texture].palette
                local tint0 = clothes_list["male"]["hats"][model][texture].tint0
                local tint1 = clothes_list["male"]["hats"][model][texture].tint1
                local tint2 = clothes_list["male"]["hats"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["hats"][model][texture].hash, false, true,
                true)
            end

        else
            if clothes_list["female"]["hats"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["female"]["hats"][model][texture].drawable
                local albedo = clothes_list["female"]["hats"][model][texture].albedo
                local normal = clothes_list["female"]["hats"][model][texture].normal
                local material = clothes_list["female"]["hats"][model][texture].material
                local palette = clothes_list["female"]["hats"][model][texture].palette
                local tint0 = clothes_list["female"]["hats"][model][texture].tint0
                local tint1 = clothes_list["female"]["hats"][model][texture].tint1
                local tint2 = clothes_list["female"]["hats"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["hats"][model][texture].hash, false, true,
                    true)
            end

        end
        haton = true
    end
end)

function ChangeHat(id, change_type)
    if id < 1 then
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("hats"), 0)
            NativeUpdatePedVariation(PlayerPedId())
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"]["hats"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["hats"][id][1].drawable
                    local albedo = clothes_list["male"]["hats"][id][1].albedo
                    local normal = clothes_list["male"]["hats"][id][1].normal
                    local material = clothes_list["male"]["hats"][id][1].material
                    local palette = clothes_list["male"]["hats"][id][1].palette
                    local tint0 = clothes_list["male"]["hats"][id][1].tint0
                    local tint1 = clothes_list["male"]["hats"][id][1].tint1
                    local tint2 = clothes_list["male"]["hats"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["hats"][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"]["hats"][HatCache["hats"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["hats"][HatCache["hats"].model][id].drawable
                    local albedo = clothes_list["male"]["hats"][HatCache["hats"].model][id].albedo
                    local normal = clothes_list["male"]["hats"][HatCache["hats"].model][id].normal
                    local material = clothes_list["male"]["hats"][HatCache["hats"].model][id].material
                    local palette = clothes_list["male"]["hats"][HatCache["hats"].model][id].palette
                    local tint0 = clothes_list["male"]["hats"][HatCache["hats"].model][id].tint0
                    local tint1 = clothes_list["male"]["hats"][HatCache["hats"].model][id].tint1
                    local tint2 = clothes_list["male"]["hats"][HatCache["hats"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"]["hats"][HatCache["hats"].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"]["hats"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["hats"][id][1].drawable
                    local albedo = clothes_list["female"]["hats"][id][1].albedo
                    local normal = clothes_list["female"]["hats"][id][1].normal
                    local material = clothes_list["female"]["hats"][id][1].material
                    local palette = clothes_list["female"]["hats"][id][1].palette
                    local tint0 = clothes_list["female"]["hats"][id][1].tint0
                    local tint1 = clothes_list["female"]["hats"][id][1].tint1
                    local tint2 = clothes_list["female"]["hats"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["hats"][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"]["hats"][HatCache["hats"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["hats"][HatCache["hats"].model][id].drawable
                    local albedo = clothes_list["female"]["hats"][HatCache["hats"].model][id].albedo
                    local normal = clothes_list["female"]["hats"][HatCache["hats"].model][id].normal
                    local material = clothes_list["female"]["hats"][HatCache["hats"].model][id].material
                    local palette = clothes_list["female"]["hats"][HatCache["hats"].model][id].palette
                    local tint0 = clothes_list["female"]["hats"][HatCache["hats"].model][id].tint0
                    local tint1 = clothes_list["female"]["hats"][HatCache["hats"].model][id].tint1
                    local tint2 = clothes_list["female"]["hats"][HatCache["hats"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"]["hats"][HatCache["hats"].model][id].hash, false, true, true)
                end
            end
        end

    end
end


---- masque

local Maskprompt = UipromptGroup:new("Marché")
Uiprompt:new(0x760A9C6F, "Acheter des masques", Maskprompt)
Maskprompt:setActive(false)

Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.Mask) do
            local dist = Vdist(coords, v)
            if dist < 2 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 4)
                end
            end
        end

    end
end)

RegisterNetEvent('rdr_clothes_store:OpenMaskMenu')
AddEventHandler('rdr_clothes_store:OpenMaskMenu', function(ClothesComponents)
    MaskCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if MaskCache["masks"] == nil then
                MaskCache["masks"] = {}
                MaskCache["masks"].model = 0
                MaskCache["masks"].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if MaskCache["masks"] == nil then
                MaskCache["masks"] = {}
                MaskCache["masks"].model = 0
                MaskCache["masks"].texture = 0
            end
        end

    end
    OldMaskCache = deepcopy(MaskCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenMaskMenu()
end)


function OpenMaskMenu()
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
            if clothes_list["male"]["masks"] ~= nil then
            local category = clothes_list["male"]["masks"]
            if MaskCache["masks"] == nil then
                MaskCache["masks"] = {}
                MaskCache["masks"].model = 0
                MaskCache["masks"].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label["masks"].. " ($" .. Config.Price["masks"]..")" or v,
                value = MaskCache["masks"].model or 0,
                category = "masks",
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel("masks", MaskCache["masks"].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label["masks"] .. " Couleur" or v,
                value = MaskCache["masks"].texture or 1,
                category = "masks",
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel("masks", MaskCache["masks"].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"]["masks"] ~= nil then
        local category = clothes_list["female"]["masks"]
        if MaskCache["masks"] == nil then
            MaskCache["masks"] = {}
            MaskCache["masks"].model = 0
            MaskCache["masks"].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label["masks"].. " ($" .. Config.Price["masks"]..")" or v,
            value = MaskCache["masks"].model or 0,
            category = "masks",
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel("masks", MaskCache["masks"].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label["masks"] .. " Couleur" or v,
            value = MaskCache["masks"].texture or 1,
            category = "masks",
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel("masks", MaskCache["masks"].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'Mask_store_menu_category', {

        title = 'Chapelier',

        subtext = 'Acheter des chapeaux',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = MaskCache["masks"].model
            info.texture = MaskCache["masks"].texture
            TriggerServerEvent("rdr_clothes_store:GiveMask", info, CurrentPrice)
            OldMaskCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldMaskCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateMask(data, menu)
    end)
end


function MenuUpdateMask(data, menu)

    if data.current.change_type == "model" then
        if MaskCache["masks"].model ~= data.current.value then
            MaskCache["masks"].texture = 1
            MaskCache["masks"].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel("masks", data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel("masks", data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel("masks", data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceMask() then
                CurrentPrice = CalculatePriceMask()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeMask(data.current.value, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        if MaskCache["masks"].texture ~= data.current.value then
            MaskCache["masks"].texture = data.current.value
            ChangeMask(data.current.value, data.current.change_type)
        end
    end

end

function ChangeMask(id, change_type)
    if id < 1 then
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("masks"), 0)
            NativeUpdatePedVariation(PlayerPedId())
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"]["masks"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["masks"][id][1].drawable
                    local albedo = clothes_list["male"]["masks"][id][1].albedo
                    local normal = clothes_list["male"]["masks"][id][1].normal
                    local material = clothes_list["male"]["masks"][id][1].material
                    local palette = clothes_list["male"]["masks"][id][1].palette
                    local tint0 = clothes_list["male"]["masks"][id][1].tint0
                    local tint1 = clothes_list["male"]["masks"][id][1].tint1
                    local tint2 = clothes_list["male"]["masks"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["masks"][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"]["masks"][MaskCache["masks"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["masks"][MaskCache["masks"].model][id].drawable
                    local albedo = clothes_list["male"]["masks"][MaskCache["masks"].model][id].albedo
                    local normal = clothes_list["male"]["masks"][MaskCache["masks"].model][id].normal
                    local material = clothes_list["male"]["masks"][MaskCache["masks"].model][id].material
                    local palette = clothes_list["male"]["masks"][MaskCache["masks"].model][id].palette
                    local tint0 = clothes_list["male"]["masks"][MaskCache["masks"].model][id].tint0
                    local tint1 = clothes_list["male"]["masks"][MaskCache["masks"].model][id].tint1
                    local tint2 = clothes_list["male"]["masks"][MaskCache["masks"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"]["masks"][MaskCache["masks"].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"]["masks"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["masks"][id][1].drawable
                    local albedo = clothes_list["female"]["masks"][id][1].albedo
                    local normal = clothes_list["female"]["masks"][id][1].normal
                    local material = clothes_list["female"]["masks"][id][1].material
                    local palette = clothes_list["female"]["masks"][id][1].palette
                    local tint0 = clothes_list["female"]["masks"][id][1].tint0
                    local tint1 = clothes_list["female"]["masks"][id][1].tint1
                    local tint2 = clothes_list["female"]["masks"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["masks"][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"]["masks"][MaskCache["masks"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["masks"][MaskCache["masks"].model][id].drawable
                    local albedo = clothes_list["female"]["masks"][MaskCache["masks"].model][id].albedo
                    local normal = clothes_list["female"]["masks"][MaskCache["masks"].model][id].normal
                    local material = clothes_list["female"]["masks"][MaskCache["masks"].model][id].material
                    local palette = clothes_list["female"]["masks"][MaskCache["masks"].model][id].palette
                    local tint0 = clothes_list["female"]["masks"][MaskCache["masks"].model][id].tint0
                    local tint1 = clothes_list["female"]["masks"][MaskCache["masks"].model][id].tint1
                    local tint2 = clothes_list["female"]["masks"][MaskCache["masks"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"]["masks"][MaskCache["masks"].model][id].hash, false, true, true)
                end
            end
        end

    end
end

local Maskon = false
RegisterNetEvent("redemrp_clothes_store:putMask", function(model, texture)
    if Maskon then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("masks"), 0)
        NativeUpdatePedVariation(PlayerPedId())
        Maskon = false
    else
        if IsPedMale(PlayerPedId()) then
            if clothes_list["male"]["masks"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["male"]["masks"][model][texture].drawable
                local albedo = clothes_list["male"]["masks"][model][texture].albedo
                local normal = clothes_list["male"]["masks"][model][texture].normal
                local material = clothes_list["male"]["masks"][model][texture].material
                local palette = clothes_list["male"]["masks"][model][texture].palette
                local tint0 = clothes_list["male"]["masks"][model][texture].tint0
                local tint1 = clothes_list["male"]["masks"][model][texture].tint1
                local tint2 = clothes_list["male"]["masks"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["masks"][model][texture].hash, false, true,
                true)
            end

        else
            if clothes_list["female"]["masks"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["female"]["masks"][model][texture].drawable
                local albedo = clothes_list["female"]["masks"][model][texture].albedo
                local normal = clothes_list["female"]["masks"][model][texture].normal
                local material = clothes_list["female"]["masks"][model][texture].material
                local palette = clothes_list["female"]["masks"][model][texture].palette
                local tint0 = clothes_list["female"]["masks"][model][texture].tint0
                local tint1 = clothes_list["female"]["masks"][model][texture].tint1
                local tint2 = clothes_list["female"]["masks"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["masks"][model][texture].hash, false, true,
                    true)
            end

        end
        Maskon = true
    end
end)


RegisterNetEvent('rdr_clothes_store:clotheitem')
AddEventHandler('rdr_clothes_store:clotheitem', function(ClothesComponents)
    Citizen.CreateThread(function()
        local _Target = PlayerPedId()
        local LoadingCheck = false
        if type(ClothesComponents) ~= "table" then
            return
        end
        if next(ClothesComponents) == nil then
            return
        end
        ClothesCache = ClothesComponents
        for k, v in pairs(ClothesComponents) do
            if v ~= nil then
                local id = tonumber(v.model)
                if id >= 1 then
                    if IsPedMale(_Target) then
                        if clothes_list["male"][k] ~= nil then
                            if clothes_list["male"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    if clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == true then
                                        NativeSetPedComponentEnabled(_Target, tonumber(
                                            clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].hash), false,
                                            true, true)
                                    elseif clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == false then
                                        local drawable = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].drawable
                                        local albedo = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].albedo
                                        local normal = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].normal
                                        local material = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].material
                                        local palette = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].palette
                                        local tint0 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint0
                                        local tint1 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint1
                                        local tint2 = clothes_list["male"][k][tonumber(v.model)][tonumber(v.texture)].tint2
                                        UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                                    end
                                end
                            end
                        end
                    else
                        if clothes_list["female"][k] ~= nil then
                            if clothes_list["female"][k][tonumber(v.model)] ~= nil then
                                if clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)] ~= nil then
                                    if clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == true then
                                    NativeSetPedComponentEnabled(_Target, tonumber(
                                        clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].hash), false,
                                        true, true)
                                    elseif clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)]["is_multiplayer"] == false then
                                        local drawable = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].drawable
                                        local albedo = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].albedo
                                        local normal = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].normal
                                        local material = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].material
                                        local palette = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].palette
                                        local tint0 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint0
                                        local tint1 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint1
                                        local tint2 = clothes_list["female"][k][tonumber(v.model)][tonumber(v.texture)].tint2
                                        UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                                    end
                                end
                            end

                        end
                    end
                else
                    if category == "cloaks" then
                        local category = GetHashKey("ponchos")
                        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), category, 0)
                        NativeUpdatePedVariation(PlayerPedId())
            
                    elseif category == "pants" or category == "boots" then
                        NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_LOWER"),
                            false, true, true)
                    elseif category == "shirts_full" then
                        NativeSetPedComponentEnabled(PlayerPedId(), exports.redemrp_creator:GetBodyCurrentComponentHash("BODIES_UPPER"),
                            false, true, true)
                    else
                        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey(category), 0)
                        NativeUpdatePedVariation(PlayerPedId())
                    end
                end
            end
        end
    end)
end)

----- eyes
Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.Eyes) do
            local dist = Vdist(coords, v)
            if dist < 2 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 5)
                end
            end
        end
    end
end)

RegisterNetEvent('rdr_clothes_store:OpenEyesMenu')
AddEventHandler('rdr_clothes_store:OpenEyesMenu', function(ClothesComponents)
    EyesCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if EyesCache["eyewear"] == nil then
                EyesCache["eyewear"] = {}
                EyesCache["eyewear"].model = 0
                EyesCache["eyewear"].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if EyesCache["eyewear"] == nil then
                EyesCache["eyewear"] = {}
                EyesCache["eyewear"].model = 0
                EyesCache["eyewear"].texture = 0
            end
        end

    end
    OldEyesCache = deepcopy(EyesCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenEyesMenu()
end)


function OpenEyesMenu()
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
            if clothes_list["male"]["eyewear"] ~= nil then
            local category = clothes_list["male"]["eyewear"]
            if EyesCache["eyewear"] == nil then
                EyesCache["eyewear"] = {}
                EyesCache["eyewear"].model = 0
                EyesCache["eyewear"].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label["eyewear"].. " ($" .. Config.Price["eyewear"]..")" or v,
                value = EyesCache["eyewear"].model or 0,
                category = "eyewear",
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel("eyewear", EyesCache["eyewear"].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label["eyewear"] .. " Couleur" or v,
                value = EyesCache["eyewear"].texture or 1,
                category = "eyewear",
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel("eyewear", EyesCache["eyewear"].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"]["eyewear"] ~= nil then
        local category = clothes_list["female"]["eyewear"]
        if EyesCache["eyewear"] == nil then
            EyesCache["eyewear"] = {}
            EyesCache["eyewear"].model = 0
            EyesCache["eyewear"].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label["eyewear"].. " ($" .. Config.Price["eyewear"]..")" or v,
            value = EyesCache["eyewear"].model or 0,
            category = "eyewear",
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel("eyewear", EyesCache["eyewear"].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label["eyewear"] .. " Couleur" or v,
            value = EyesCache["eyewear"].texture or 1,
            category = "eyewear",
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel("eyewear", EyesCache["eyewear"].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'Eyes_store_menu_category', {

        title = 'Chapelier',

        subtext = 'Acheter des chapeaux',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = EyesCache["eyewear"].model
            info.texture = EyesCache["eyewear"].texture
            TriggerServerEvent("rdr_clothes_store:GiveEyes", info, CurrentPrice)
            OldEyesCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldEyesCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateEyes(data, menu)
    end)
end


function MenuUpdateEyes(data, menu)

    if data.current.change_type == "model" then
        if EyesCache["eyewear"].model ~= data.current.value then
            EyesCache["eyewear"].texture = 1
            EyesCache["eyewear"].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel("eyewear", data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel("eyewear", data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel("eyewear", data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceEyes() then
                CurrentPrice = CalculatePriceEyes()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeEyes(data.current.value, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        if EyesCache["eyewear"].texture ~= data.current.value then
            EyesCache["eyewear"].texture = data.current.value
            ChangeEyes(data.current.value, data.current.change_type)
        end
    end

end

local Eyeson = false
RegisterNetEvent("redemrp_clothes_store:putEyes", function(model, texture)
    if Eyeson then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("eyewear"), 0)
        NativeUpdatePedVariation(PlayerPedId())
        Eyeson = false
    else
        if IsPedMale(PlayerPedId()) then
            if clothes_list["male"]["eyewear"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["male"]["eyewear"][model][texture].drawable
                local albedo = clothes_list["male"]["eyewear"][model][texture].albedo
                local normal = clothes_list["male"]["eyewear"][model][texture].normal
                local material = clothes_list["male"]["eyewear"][model][texture].material
                local palette = clothes_list["male"]["eyewear"][model][texture].palette
                local tint0 = clothes_list["male"]["eyewear"][model][texture].tint0
                local tint1 = clothes_list["male"]["eyewear"][model][texture].tint1
                local tint2 = clothes_list["male"]["eyewear"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["eyewear"][model][texture].hash, false, true,
                true)
            end

        else
            if clothes_list["female"]["eyewear"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["female"]["eyewear"][model][texture].drawable
                local albedo = clothes_list["female"]["eyewear"][model][texture].albedo
                local normal = clothes_list["female"]["eyewear"][model][texture].normal
                local material = clothes_list["female"]["eyewear"][model][texture].material
                local palette = clothes_list["female"]["eyewear"][model][texture].palette
                local tint0 = clothes_list["female"]["eyewear"][model][texture].tint0
                local tint1 = clothes_list["female"]["eyewear"][model][texture].tint1
                local tint2 = clothes_list["female"]["eyewear"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["eyewear"][model][texture].hash, false, true,
                    true)
            end

        end
        Eyeson = true
    end
end)

function ChangeEyes(id, change_type)
    if id < 1 then
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("eyewear"), 0)
            NativeUpdatePedVariation(PlayerPedId())
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"]["eyewear"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["eyewear"][id][1].drawable
                    local albedo = clothes_list["male"]["eyewear"][id][1].albedo
                    local normal = clothes_list["male"]["eyewear"][id][1].normal
                    local material = clothes_list["male"]["eyewear"][id][1].material
                    local palette = clothes_list["male"]["eyewear"][id][1].palette
                    local tint0 = clothes_list["male"]["eyewear"][id][1].tint0
                    local tint1 = clothes_list["male"]["eyewear"][id][1].tint1
                    local tint2 = clothes_list["male"]["eyewear"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["eyewear"][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].drawable
                    local albedo = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].albedo
                    local normal = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].normal
                    local material = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].material
                    local palette = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].palette
                    local tint0 = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].tint0
                    local tint1 = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].tint1
                    local tint2 = clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"]["eyewear"][EyesCache["eyewear"].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"]["eyewear"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["eyewear"][id][1].drawable
                    local albedo = clothes_list["female"]["eyewear"][id][1].albedo
                    local normal = clothes_list["female"]["eyewear"][id][1].normal
                    local material = clothes_list["female"]["eyewear"][id][1].material
                    local palette = clothes_list["female"]["eyewear"][id][1].palette
                    local tint0 = clothes_list["female"]["eyewear"][id][1].tint0
                    local tint1 = clothes_list["female"]["eyewear"][id][1].tint1
                    local tint2 = clothes_list["female"]["eyewear"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["eyewear"][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].drawable
                    local albedo = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].albedo
                    local normal = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].normal
                    local material = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].material
                    local palette = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].palette
                    local tint0 = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].tint0
                    local tint1 = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].tint1
                    local tint2 = clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"]["eyewear"][EyesCache["eyewear"].model][id].hash, false, true, true)
                end
            end
        end

    end
end

----- bijoux D

-- Citizen.CreateThread(function()
--     while true do
--         Wait(1)
--         local playerPed = PlayerPedId()
--         local coords = GetEntityCoords(playerPed)
--         if isCreatorOpened then
--             DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
--         end
--         for k, v in pairs(Config.BaguesD) do
--             local dist = Vdist(coords, v)
--             if dist < 1.0 then
--                 TriggerEvent('dust_presskey', "Appuyez sur G")
--                 if IsControlJustReleased(0, 0x760A9C6F) then
--                     local closestPlayer, closestDistance,  playerid, tgt1 = getClosestPlayer()
--                     print (playerid, tgt1)
--                     TriggerServerEvent("rdr_clothes_store:LoadClothes", 6, playerid, tgt1)
--                 end
--             end
--         end
--     end
-- end)



-- RegisterNetEvent('rdr_clothes_store:OpenDBaguesMenu')
-- AddEventHandler('rdr_clothes_store:OpenDBaguesMenu', function(ClothesComponents, target)
--     DBaguesCache = ClothesComponents
--     if IsPedMale(target) then
--         for k,v in pairs(clothes_list["male"]) do
--             if DBaguesCache["jewelry_rings_right"] == nil then
--                 DBaguesCache["jewelry_rings_right"] = {}
--                 DBaguesCache["jewelry_rings_right"].model = 0
--                 DBaguesCache["jewelry_rings_right"].texture = 0
--             end
--         end
--     else
--         for k,v in pairs(clothes_list["female"]) do
--             if DBaguesCache["jewelry_rings_right"] == nil then
--                 DBaguesCache["jewelry_rings_right"] = {}
--                 DBaguesCache["jewelry_rings_right"].model = 0
--                 DBaguesCache["jewelry_rings_right"].texture = 0
--             end
--         end

--     end
--     OldDBaguesCache = deepcopy(DBaguesCache)
-- --    if IsPedMale(PlayerPedId()) then
-- --        for k,v in pairs(clothes_list["male"]) do
-- --            if OldClothesCache[k] == nil then
-- --                OldClothesCache[k] = {}
-- --                OldClothesCache[k].model = 0
-- --                OldClothesCache[k].texture = 0
-- --            end
-- --        end
-- --    else
-- --        for k,v in pairs(clothes_list["female"]) do
-- --            if OldClothesCache[k] == nil then
-- --                OldClothesCache[k] = {}
-- --                OldClothesCache[k].model = 0
-- --                OldClothesCache[k].texture = 0
-- --            end
-- --        end
-- --    end
--     OpenDBaguesMenu(target)
-- end)


-- function OpenDBaguesMenu(target)
--     MenuData.CloseAll()
--     local elements = {}

--     if IsPedMale(target) then
--         local a = 1
--             if clothes_list["male"]["jewelry_rings_right"] ~= nil then
--             local category = clothes_list["male"]["jewelry_rings_right"]
--             if DBaguesCache["jewelry_rings_right"] == nil then
--                 DBaguesCache["jewelry_rings_right"] = {}
--                 DBaguesCache["jewelry_rings_right"].model = 0
--                 DBaguesCache["jewelry_rings_right"].texture = 1
--             end
--             local options = {}
--             for k, v in pairs(category) do
--                 table.insert(options, k .." Style")
--             end
--             table.insert(elements, {
--                 label = Config.Label["jewelry_rings_right"].. " ($" .. Config.Price["jewelry_rings_right"]..")" or v,
--                 value = DBaguesCache["jewelry_rings_right"].model or 0,
--                 category = "jewelry_rings_right",
--                 desc = "Changer le modèle",
--                 type = "slider",
--                 min = 0,
--                 max = #category,
--                 change_type = "model",
--                 id = a,
--                 options = options
--             })
--             a = a + 1
--             options = {}

--             for i = 1, GetMaxTexturesForModel("jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model or 1), 1 do
--                 table.insert(options, i.." Couleur")
--             end
--             table.insert(elements, {
--                 label = Config.Label["jewelry_rings_right"] .. " Couleur" or v,
--                 value = DBaguesCache["jewelry_rings_right"].texture or 1,
--                 category = "jewelry_rings_right",
--                 desc = "Changer la couleur",
--                 type = "slider",
--                 min = 1,
--                 max = GetMaxTexturesForModel("jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model or 1),
--                 change_type = "texture",
--                 id = a,
--                 options = options
--             })

--             options = {}
--             a = a + 1
--             table.insert(elements, {
--                 label = Config.Label["save"] or "Save",
--                 value = "save",
--                 desc = "Valider $"..CurrentPrice
--             })
        
--         end

--     else
--         local a = 1
--         if clothes_list["female"]["jewelry_rings_right"] ~= nil then
--         local category = clothes_list["female"]["jewelry_rings_right"]
--         if DBaguesCache["jewelry_rings_right"] == nil then
--             DBaguesCache["jewelry_rings_right"] = {}
--             DBaguesCache["jewelry_rings_right"].model = 0
--             DBaguesCache["jewelry_rings_right"].texture = 1
--         end
--         local options = {}
--         for k, v in pairs(category) do
--             table.insert(options, k .." Style")
--         end
--         table.insert(elements, {
--             label = Config.Label["jewelry_rings_right"].. " ($" .. Config.Price["jewelry_rings_right"]..")" or v,
--             value = DBaguesCache["jewelry_rings_right"].model or 0,
--             category = "jewelry_rings_right",
--             desc = "Changer le modèle",
--             type = "slider",
--             min = 0,
--             max = #category,
--             change_type = "model",
--             id = a,
--             options = options
--         })
--         a = a + 1
--         options = {}

--         for i = 1, GetMaxTexturesForModel("jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model or 1), 1 do
--             table.insert(options, i.." Couleur")
--         end
--         table.insert(elements, {
--             label = Config.Label["jewelry_rings_right"] .. " Couleur" or v,
--             value = DBaguesCache["jewelry_rings_right"].texture or 1,
--             category = "jewelry_rings_right",
--             desc = "Changer la couleur",
--             type = "slider",
--             min = 1,
--             max = GetMaxTexturesForModel("jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model or 1),
--             change_type = "texture",
--             id = a,
--             options = options
--         })

--         options = {}
--         a = a + 1
--         table.insert(elements, {
--             label = Config.Label["save"] or "Save",
--             value = "save",
--             desc = "Valider $"..CurrentPrice
--         })
--     end



--     end
--     MenuData.Open('default', GetCurrentResourceName(), 'DBagues_store_menu_category', {

--         title = 'Chapelier',

--         subtext = 'Acheter des chapeaux',

--         align = 'top-left',

--         elements = elements

--     }, function(data, menu)
--         if data.current.value == "save" then
--             destory()
--             menu.close()
--             saveOutfit = true
--             local info = {}
--             info.model = DBaguesCache["jewelry_rings_right"].model
--             info.texture = DBaguesCache["jewelry_rings_right"].texture
--             TriggerServerEvent("rdr_clothes_store:GiveDBagues", info, CurrentPrice)
--             OldDBaguesCache = {}
--         else end
--     end, function(data, menu)
--         menu.close()
--         OldDBaguesCache = {}
--         destory()
--         TriggerServerEvent("RedEM:server:LoadSkin")
--     end, function(data, menu)
--         MenuUpdateDBagues(data, menu, target)
--     end)
-- end


-- function MenuUpdateDBagues(data, menu, target)
--     if data.current.change_type == "model" then
--         if DBaguesCache["jewelry_rings_right"].model ~= data.current.value then
--             DBaguesCache["jewelry_rings_right"].texture = 1
--             DBaguesCache["jewelry_rings_right"].model = data.current.value
--             if data.current.value > 0 then
--                 local options = {}
--                 -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
--                 if GetMaxTexturesForModel("jewelry_rings_right", data.current.value) > 1 then
--                     for i = 1, GetMaxTexturesForModel("jewelry_rings_right", data.current.value), 1 do
--                         table.insert(options, i .. " Couleur")
--                     end
--                 else
--                     table.insert(options, "Sans")

--                 end
--                 menu.setElement(data.current.id + 1, "options", options)
--                 menu.setElement(data.current.id + 1, "max",
--                     GetMaxTexturesForModel("jewelry_rings_right", data.current.value))
--                 menu.setElement(data.current.id + 1, "min", 1)
--                 menu.setElement(data.current.id + 1, "value", 1)
--                 menu.refresh()

--             else
--                 menu.setElement(data.current.id + 1, "max", 0)
--                 menu.setElement(data.current.id + 1, "min", 0)
--                 menu.setElement(data.current.id + 1, "value", 0)
--                 menu.refresh()

--             end
--             if CurrentPrice ~= CalculatePriceDBagues() then
--                 CurrentPrice = CalculatePriceDBagues()
--                 local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
--                     tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
--                 Citizen.InvokeNative(0xFA233F8FE190514C, str)
--                 Citizen.InvokeNative(0xE9990552DEC71600)
--             end
--             -- TriggerServerEvent("dust_craft_clothes:askprevisu", data.current.value, data.current.change_type, target)
--             ChangeDBagues(data.current.value, data.current.change_type, target)
--         end
--     end
--     if data.current.change_type == "texture" then
--         if DBaguesCache["jewelry_rings_right"].texture ~= data.current.value then
--             DBaguesCache["jewelry_rings_right"].texture = data.current.value

--             -- TriggerServerEvent("dust_craft_clothes:askprevisu", data.current.value, data.current.change_type, target)
--             ChangeDBagues(data.current.value, data.current.change_type, target)
--         end
--     end

-- end

-- local DBagueson = false
-- RegisterNetEvent("redemrp_clothes_store:putDBagues", function(model, texture)
--     if DBagueson then
--         Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("jewelry_rings_right"), 0)
--         NativeUpdatePedVariation(PlayerPedId())
--         DBagueson = false
--     else
--         if IsPedMale(PlayerPedId()) then
--             if clothes_list["male"]["jewelry_rings_right"][model][texture]['is_multiplayer'] == false then
--                 local drawable = clothes_list["male"]["jewelry_rings_right"][model][texture].drawable
--                 local albedo = clothes_list["male"]["jewelry_rings_right"][model][texture].albedo
--                 local normal = clothes_list["male"]["jewelry_rings_right"][model][texture].normal
--                 local material = clothes_list["male"]["jewelry_rings_right"][model][texture].material
--                 local palette = clothes_list["male"]["jewelry_rings_right"][model][texture].palette
--                 local tint0 = clothes_list["male"]["jewelry_rings_right"][model][texture].tint0
--                 local tint1 = clothes_list["male"]["jewelry_rings_right"][model][texture].tint1
--                 local tint2 = clothes_list["male"]["jewelry_rings_right"][model][texture].tint2
--                 UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--             else
--             NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["jewelry_rings_right"][model][texture].hash, false, true,
--                 true)
--             end

--         else
--             if clothes_list["female"]["jewelry_rings_right"][model][texture]['is_multiplayer'] == false then
--                 local drawable = clothes_list["female"]["jewelry_rings_right"][model][texture].drawable
--                 local albedo = clothes_list["female"]["jewelry_rings_right"][model][texture].albedo
--                 local normal = clothes_list["female"]["jewelry_rings_right"][model][texture].normal
--                 local material = clothes_list["female"]["jewelry_rings_right"][model][texture].material
--                 local palette = clothes_list["female"]["jewelry_rings_right"][model][texture].palette
--                 local tint0 = clothes_list["female"]["jewelry_rings_right"][model][texture].tint0
--                 local tint1 = clothes_list["female"]["jewelry_rings_right"][model][texture].tint1
--                 local tint2 = clothes_list["female"]["jewelry_rings_right"][model][texture].tint2
--                 UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--             else
--                 NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["jewelry_rings_right"][model][texture].hash, false, true,
--                     true)
--             end

--         end
--         DBagueson = true
--     end
-- end)

-- RegisterNetEvent("dust_craft_clothes:previsu", function(id, change_type, target)
--     ChangeDBagues(id, change_type, target)
-- end)


-- RegisterNetEvent("rdr_clothes_store:getcache", function(table)
--     DBaguesCache = table
--     print (DBaguesCache)
--     if IsPedMale(PlayerPedId()) then
--         for k,v in pairs(clothes_list["male"]) do
--             if DBaguesCache["jewelry_rings_right"] == nil then
--                 DBaguesCache["jewelry_rings_right"] = {}
--                 DBaguesCache["jewelry_rings_right"].model = 0
--                 DBaguesCache["jewelry_rings_right"].texture = 0
--             end
--         end
--     else
--         for k,v in pairs(clothes_list["female"]) do
--             if DBaguesCache["jewelry_rings_right"] == nil then
--                 DBaguesCache["jewelry_rings_right"] = {}
--                 DBaguesCache["jewelry_rings_right"].model = 0
--                 DBaguesCache["jewelry_rings_right"].texture = 0
--             end
--         end

--     end
--     print(DBaguesCache["jewelry_rings_right"].model)
-- end)

-- function ChangeDBagues(id, change_type, target)
--     if id < 1 then
--             Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("jewelry_rings_right"), 0)
--             NativeUpdatePedVariation(PlayerPedId())
--     else
--         if IsPedMale(PlayerPedId()) then
--             if change_type == "model" then
--                 -- if clothes_list["male"]["jewelry_rings_right"][id][1]['is_multiplayer'] == false then
--                 --     local drawable = clothes_list["male"]["jewelry_rings_right"][id][1].drawable
--                 --     local albedo = clothes_list["male"]["jewelry_rings_right"][id][1].albedo
--                 --     local normal = clothes_list["male"]["jewelry_rings_right"][id][1].normal
--                 --     local material = clothes_list["male"]["jewelry_rings_right"][id][1].material
--                 --     local palette = clothes_list["male"]["jewelry_rings_right"][id][1].palette
--                 --     local tint0 = clothes_list["male"]["jewelry_rings_right"][id][1].tint0
--                 --     local tint1 = clothes_list["male"]["jewelry_rings_right"][id][1].tint1
--                 --     local tint2 = clothes_list["male"]["jewelry_rings_right"][id][1].tint2
--                 --     UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--                 -- else
--                 -- NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["jewelry_rings_right"][id][1].hash, false, true,
--                 --     true)
--                 -- end
--                 TriggerServerEvent("dust_clothes:askchange", "jewelry_rings_right", id, 1)
--             else
--                 -- if clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id]['is_multiplayer'] == false then
--                 --     local drawable = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].drawable
--                 --     local albedo = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].albedo
--                 --     local normal = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].normal
--                 --     local material = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].material
--                 --     local palette = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].palette
--                 --     local tint0 = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint0
--                 --     local tint1 = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint1
--                 --     local tint2 = clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint2
--                 --     UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--                 -- else
--                 -- NativeSetPedComponentEnabled(PlayerPedId(),
--                 --     clothes_list["male"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].hash, false, true, true)
--                 -- end
--                 TriggerServerEvent("dust_clothes:askchange", "jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model, id)
--             end

--         else
--             if change_type == "model" then
--                 -- if clothes_list["female"]["jewelry_rings_right"][id][1]['is_multiplayer'] == false then
--                 --     local drawable = clothes_list["female"]["jewelry_rings_right"][id][1].drawable
--                 --     local albedo = clothes_list["female"]["jewelry_rings_right"][id][1].albedo
--                 --     local normal = clothes_list["female"]["jewelry_rings_right"][id][1].normal
--                 --     local material = clothes_list["female"]["jewelry_rings_right"][id][1].material
--                 --     local palette = clothes_list["female"]["jewelry_rings_right"][id][1].palette
--                 --     local tint0 = clothes_list["female"]["jewelry_rings_right"][id][1].tint0
--                 --     local tint1 = clothes_list["female"]["jewelry_rings_right"][id][1].tint1
--                 --     local tint2 = clothes_list["female"]["jewelry_rings_right"][id][1].tint2
--                 --     UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--                 -- else
--                 --     NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["jewelry_rings_right"][id][1].hash, false, true,
--                 --         true)
--                 -- end
--                 TriggerServerEvent("dust_clothes:askchange", "jewelry_rings_right", id, 1)
--             else
--                 -- if clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id]['is_multiplayer'] == false then
--                 --     local drawable = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].drawable
--                 --     local albedo = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].albedo
--                 --     local normal = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].normal
--                 --     local material = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].material
--                 --     local palette = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].palette
--                 --     local tint0 = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint0
--                 --     local tint1 = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint1
--                 --     local tint2 = clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].tint2
--                 --     UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
--                 -- -- else
--                 -- NativeSetPedComponentEnabled(PlayerPedId(),
--                 --     clothes_list["female"]["jewelry_rings_right"][DBaguesCache["jewelry_rings_right"].model][id].hash, false, true, true)
--                 -- -- end
--                 TriggerServerEvent("dust_clothes:askchange", "jewelry_rings_right", DBaguesCache["jewelry_rings_right"].model, id)
--             end
--         end

--     end
-- end

----- bijoux g

Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.BaguesG) do
            local dist = Vdist(coords, v)
            if dist < 1.0 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 7)
                end
            end
        end
    end
end)

RegisterNetEvent('rdr_clothes_store:OpenGBaguesMenu')
AddEventHandler('rdr_clothes_store:OpenGBaguesMenu', function(ClothesComponents)
    GBaguesCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if GBaguesCache["jewelry_rings_left"] == nil then
                GBaguesCache["jewelry_rings_left"] = {}
                GBaguesCache["jewelry_rings_left"].model = 0
                GBaguesCache["jewelry_rings_left"].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if GBaguesCache["jewelry_rings_left"] == nil then
                GBaguesCache["jewelry_rings_left"] = {}
                GBaguesCache["jewelry_rings_left"].model = 0
                GBaguesCache["jewelry_rings_left"].texture = 0
            end
        end

    end
    OldGBaguesCache = deepcopy(GBaguesCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenGBaguesMenu()
end)


function OpenGBaguesMenu()
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
            if clothes_list["male"]["jewelry_rings_left"] ~= nil then
            local category = clothes_list["male"]["jewelry_rings_left"]
            if GBaguesCache["jewelry_rings_left"] == nil then
                GBaguesCache["jewelry_rings_left"] = {}
                GBaguesCache["jewelry_rings_left"].model = 0
                GBaguesCache["jewelry_rings_left"].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label["jewelry_rings_left"].. " ($" .. Config.Price["jewelry_rings_left"]..")" or v,
                value = GBaguesCache["jewelry_rings_left"].model or 0,
                category = "jewelry_rings_left",
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel("jewelry_rings_left", GBaguesCache["jewelry_rings_left"].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label["jewelry_rings_left"] .. " Couleur" or v,
                value = GBaguesCache["jewelry_rings_left"].texture or 1,
                category = "jewelry_rings_left",
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel("jewelry_rings_left", GBaguesCache["jewelry_rings_left"].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"]["jewelry_rings_left"] ~= nil then
        local category = clothes_list["female"]["jewelry_rings_left"]
        if GBaguesCache["jewelry_rings_left"] == nil then
            GBaguesCache["jewelry_rings_left"] = {}
            GBaguesCache["jewelry_rings_left"].model = 0
            GBaguesCache["jewelry_rings_left"].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label["jewelry_rings_left"].. " ($" .. Config.Price["jewelry_rings_left"]..")" or v,
            value = GBaguesCache["jewelry_rings_left"].model or 0,
            category = "jewelry_rings_left",
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel("jewelry_rings_left", GBaguesCache["jewelry_rings_left"].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label["jewelry_rings_left"] .. " Couleur" or v,
            value = GBaguesCache["jewelry_rings_left"].texture or 1,
            category = "jewelry_rings_left",
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel("jewelry_rings_left", GBaguesCache["jewelry_rings_left"].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'GBagues_store_menu_category', {

        title = 'Chapelier',

        subtext = 'Acheter des chapeaux',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = GBaguesCache["jewelry_rings_left"].model
            info.texture = GBaguesCache["jewelry_rings_left"].texture
            TriggerServerEvent("rdr_clothes_store:GiveGBagues", info, CurrentPrice)
            OldGBaguesCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldGBaguesCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateGBagues(data, menu)
    end)
end


function MenuUpdateGBagues(data, menu)

    if data.current.change_type == "model" then
        if GBaguesCache["jewelry_rings_left"].model ~= data.current.value then
            GBaguesCache["jewelry_rings_left"].texture = 1
            GBaguesCache["jewelry_rings_left"].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel("jewelry_rings_left", data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel("jewelry_rings_left", data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel("jewelry_rings_left", data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceGBagues() then
                CurrentPrice = CalculatePriceGBagues()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeGBagues(data.current.value, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        if GBaguesCache["jewelry_rings_left"].texture ~= data.current.value then
            GBaguesCache["jewelry_rings_left"].texture = data.current.value
            ChangeGBagues(data.current.value, data.current.change_type)
        end
    end

end

local GBagueson = false
RegisterNetEvent("redemrp_clothes_store:putGBagues", function(model, texture)
    if GBagueson then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("jewelry_rings_left"), 0)
        NativeUpdatePedVariation(PlayerPedId())
        GBagueson = false
    else
        if IsPedMale(PlayerPedId()) then
            if clothes_list["male"]["jewelry_rings_left"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["male"]["jewelry_rings_left"][model][texture].drawable
                local albedo = clothes_list["male"]["jewelry_rings_left"][model][texture].albedo
                local normal = clothes_list["male"]["jewelry_rings_left"][model][texture].normal
                local material = clothes_list["male"]["jewelry_rings_left"][model][texture].material
                local palette = clothes_list["male"]["jewelry_rings_left"][model][texture].palette
                local tint0 = clothes_list["male"]["jewelry_rings_left"][model][texture].tint0
                local tint1 = clothes_list["male"]["jewelry_rings_left"][model][texture].tint1
                local tint2 = clothes_list["male"]["jewelry_rings_left"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["jewelry_rings_left"][model][texture].hash, false, true,
                true)
            end

        else
            if clothes_list["female"]["jewelry_rings_left"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["female"]["jewelry_rings_left"][model][texture].drawable
                local albedo = clothes_list["female"]["jewelry_rings_left"][model][texture].albedo
                local normal = clothes_list["female"]["jewelry_rings_left"][model][texture].normal
                local material = clothes_list["female"]["jewelry_rings_left"][model][texture].material
                local palette = clothes_list["female"]["jewelry_rings_left"][model][texture].palette
                local tint0 = clothes_list["female"]["jewelry_rings_left"][model][texture].tint0
                local tint1 = clothes_list["female"]["jewelry_rings_left"][model][texture].tint1
                local tint2 = clothes_list["female"]["jewelry_rings_left"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["jewelry_rings_left"][model][texture].hash, false, true,
                    true)
            end

        end
        GBagueson = true
    end
end)

function ChangeGBagues(id, change_type)
    if id < 1 then
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("jewelry_rings_left"), 0)
            NativeUpdatePedVariation(PlayerPedId())
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"]["jewelry_rings_left"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["jewelry_rings_left"][id][1].drawable
                    local albedo = clothes_list["male"]["jewelry_rings_left"][id][1].albedo
                    local normal = clothes_list["male"]["jewelry_rings_left"][id][1].normal
                    local material = clothes_list["male"]["jewelry_rings_left"][id][1].material
                    local palette = clothes_list["male"]["jewelry_rings_left"][id][1].palette
                    local tint0 = clothes_list["male"]["jewelry_rings_left"][id][1].tint0
                    local tint1 = clothes_list["male"]["jewelry_rings_left"][id][1].tint1
                    local tint2 = clothes_list["male"]["jewelry_rings_left"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["jewelry_rings_left"][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].drawable
                    local albedo = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].albedo
                    local normal = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].normal
                    local material = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].material
                    local palette = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].palette
                    local tint0 = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint0
                    local tint1 = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint1
                    local tint2 = clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"]["jewelry_rings_left"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["jewelry_rings_left"][id][1].drawable
                    local albedo = clothes_list["female"]["jewelry_rings_left"][id][1].albedo
                    local normal = clothes_list["female"]["jewelry_rings_left"][id][1].normal
                    local material = clothes_list["female"]["jewelry_rings_left"][id][1].material
                    local palette = clothes_list["female"]["jewelry_rings_left"][id][1].palette
                    local tint0 = clothes_list["female"]["jewelry_rings_left"][id][1].tint0
                    local tint1 = clothes_list["female"]["jewelry_rings_left"][id][1].tint1
                    local tint2 = clothes_list["female"]["jewelry_rings_left"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["jewelry_rings_left"][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].drawable
                    local albedo = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].albedo
                    local normal = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].normal
                    local material = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].material
                    local palette = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].palette
                    local tint0 = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint0
                    local tint1 = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint1
                    local tint2 = clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"]["jewelry_rings_left"][GBaguesCache["jewelry_rings_left"].model][id].hash, false, true, true)
                end
            end
        end

    end
end


---- acc bottes
Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.AccBottes) do
            local dist = Vdist(coords, v)
            if dist < 1.0 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 8)
                end
            end
        end
    end
end)

RegisterNetEvent('rdr_clothes_store:OpenAccBottesMenu')
AddEventHandler('rdr_clothes_store:OpenAccBottesMenu', function(ClothesComponents)
    AccBottesCache = ClothesComponents
    if IsPedMale(PlayerPedId()) then
        for k,v in pairs(clothes_list["male"]) do
            if AccBottesCache["boot_accessories"] == nil then
                AccBottesCache["boot_accessories"] = {}
                AccBottesCache["boot_accessories"].model = 0
                AccBottesCache["boot_accessories"].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if AccBottesCache["boot_accessories"] == nil then
                AccBottesCache["boot_accessories"] = {}
                AccBottesCache["boot_accessories"].model = 0
                AccBottesCache["boot_accessories"].texture = 0
            end
        end

    end
    OldAccBottesCache = deepcopy(AccBottesCache)
--    if IsPedMale(PlayerPedId()) then
--        for k,v in pairs(clothes_list["male"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    else
--        for k,v in pairs(clothes_list["female"]) do
--            if OldClothesCache[k] == nil then
--                OldClothesCache[k] = {}
--                OldClothesCache[k].model = 0
--                OldClothesCache[k].texture = 0
--            end
--        end
--    end
    camera(2.8, -0.15)
    ClothingLight()
    OpenAccBottesMenu()
end)


function OpenAccBottesMenu()
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(PlayerPedId()) then
        local a = 1
            if clothes_list["male"]["boot_accessories"] ~= nil then
            local category = clothes_list["male"]["boot_accessories"]
            if AccBottesCache["boot_accessories"] == nil then
                AccBottesCache["boot_accessories"] = {}
                AccBottesCache["boot_accessories"].model = 0
                AccBottesCache["boot_accessories"].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label["boot_accessories"].. " ($" .. Config.Price["boot_accessories"]..")" or v,
                value = AccBottesCache["boot_accessories"].model or 0,
                category = "boot_accessories",
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel("boot_accessories", AccBottesCache["boot_accessories"].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label["boot_accessories"] .. " Couleur" or v,
                value = AccBottesCache["boot_accessories"].texture or 1,
                category = "boot_accessories",
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel("boot_accessories", AccBottesCache["boot_accessories"].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"]["boot_accessories"] ~= nil then
        local category = clothes_list["female"]["boot_accessories"]
        if AccBottesCache["boot_accessories"] == nil then
            AccBottesCache["boot_accessories"] = {}
            AccBottesCache["boot_accessories"].model = 0
            AccBottesCache["boot_accessories"].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label["boot_accessories"].. " ($" .. Config.Price["boot_accessories"]..")" or v,
            value = AccBottesCache["boot_accessories"].model or 0,
            category = "boot_accessories",
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel("boot_accessories", AccBottesCache["boot_accessories"].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label["boot_accessories"] .. " Couleur" or v,
            value = AccBottesCache["boot_accessories"].texture or 1,
            category = "boot_accessories",
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel("boot_accessories", AccBottesCache["boot_accessories"].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'AccBottes_store_menu_category', {

        title = 'Chapelier',

        subtext = 'Acheter des chapeaux',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = AccBottesCache["boot_accessories"].model
            info.texture = AccBottesCache["boot_accessories"].texture
            TriggerServerEvent("rdr_clothes_store:GiveAccBottes", info, CurrentPrice)
            OldAccBottesCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldAccBottesCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateAccBottes(data, menu)
    end)
end


function MenuUpdateAccBottes(data, menu)

    if data.current.change_type == "model" then
        if AccBottesCache["boot_accessories"].model ~= data.current.value then
            AccBottesCache["boot_accessories"].texture = 1
            AccBottesCache["boot_accessories"].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel("boot_accessories", data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel("boot_accessories", data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel("boot_accessories", data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceAccBottes() then
                CurrentPrice = CalculatePriceAccBottes()
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeAccBottes(data.current.value, data.current.change_type)
        end
    end
    if data.current.change_type == "texture" then
        if AccBottesCache["boot_accessories"].texture ~= data.current.value then
            AccBottesCache["boot_accessories"].texture = data.current.value
            ChangeAccBottes(data.current.value, data.current.change_type)
        end
    end

end

local AccBotteson = false
RegisterNetEvent("redemrp_clothes_store:putAccBottes", function(model, texture)
    if AccBotteson then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("boot_accessories"), 0)
        NativeUpdatePedVariation(PlayerPedId())
        AccBotteson = false
    else
        if IsPedMale(PlayerPedId()) then
            if clothes_list["male"]["boot_accessories"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["male"]["boot_accessories"][model][texture].drawable
                local albedo = clothes_list["male"]["boot_accessories"][model][texture].albedo
                local normal = clothes_list["male"]["boot_accessories"][model][texture].normal
                local material = clothes_list["male"]["boot_accessories"][model][texture].material
                local palette = clothes_list["male"]["boot_accessories"][model][texture].palette
                local tint0 = clothes_list["male"]["boot_accessories"][model][texture].tint0
                local tint1 = clothes_list["male"]["boot_accessories"][model][texture].tint1
                local tint2 = clothes_list["male"]["boot_accessories"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["boot_accessories"][model][texture].hash, false, true,
                true)
            end

        else
            if clothes_list["female"]["boot_accessories"][model][texture]['is_multiplayer'] == false then
                local drawable = clothes_list["female"]["boot_accessories"][model][texture].drawable
                local albedo = clothes_list["female"]["boot_accessories"][model][texture].albedo
                local normal = clothes_list["female"]["boot_accessories"][model][texture].normal
                local material = clothes_list["female"]["boot_accessories"][model][texture].material
                local palette = clothes_list["female"]["boot_accessories"][model][texture].palette
                local tint0 = clothes_list["female"]["boot_accessories"][model][texture].tint0
                local tint1 = clothes_list["female"]["boot_accessories"][model][texture].tint1
                local tint2 = clothes_list["female"]["boot_accessories"][model][texture].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["boot_accessories"][model][texture].hash, false, true,
                    true)
            end

        end
        AccBotteson = true
    end
end)

function ChangeAccBottes(id, change_type)
    if id < 1 then
            Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey("boot_accessories"), 0)
            NativeUpdatePedVariation(PlayerPedId())
    else
        if IsPedMale(PlayerPedId()) then
            if change_type == "model" then
                if clothes_list["male"]["boot_accessories"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["boot_accessories"][id][1].drawable
                    local albedo = clothes_list["male"]["boot_accessories"][id][1].albedo
                    local normal = clothes_list["male"]["boot_accessories"][id][1].normal
                    local material = clothes_list["male"]["boot_accessories"][id][1].material
                    local palette = clothes_list["male"]["boot_accessories"][id][1].palette
                    local tint0 = clothes_list["male"]["boot_accessories"][id][1].tint0
                    local tint1 = clothes_list["male"]["boot_accessories"][id][1].tint1
                    local tint2 = clothes_list["male"]["boot_accessories"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["male"]["boot_accessories"][id][1].hash, false, true,
                    true)
                end
            else
                if clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].drawable
                    local albedo = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].albedo
                    local normal = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].normal
                    local material = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].material
                    local palette = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].palette
                    local tint0 = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint0
                    local tint1 = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint1
                    local tint2 = clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["male"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].hash, false, true, true)
                end
            end

        else
            if change_type == "model" then
                if clothes_list["female"]["boot_accessories"][id][1]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["boot_accessories"][id][1].drawable
                    local albedo = clothes_list["female"]["boot_accessories"][id][1].albedo
                    local normal = clothes_list["female"]["boot_accessories"][id][1].normal
                    local material = clothes_list["female"]["boot_accessories"][id][1].material
                    local palette = clothes_list["female"]["boot_accessories"][id][1].palette
                    local tint0 = clothes_list["female"]["boot_accessories"][id][1].tint0
                    local tint1 = clothes_list["female"]["boot_accessories"][id][1].tint1
                    local tint2 = clothes_list["female"]["boot_accessories"][id][1].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                    NativeSetPedComponentEnabled(PlayerPedId(), clothes_list["female"]["boot_accessories"][id][1].hash, false, true,
                        true)
                end
            else
                if clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id]['is_multiplayer'] == false then
                    local drawable = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].drawable
                    local albedo = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].albedo
                    local normal = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].normal
                    local material = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].material
                    local palette = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].palette
                    local tint0 = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint0
                    local tint1 = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint1
                    local tint2 = clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].tint2
                    UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
                else
                NativeSetPedComponentEnabled(PlayerPedId(),
                    clothes_list["female"]["boot_accessories"][AccBottesCache["boot_accessories"].model][id].hash, false, true, true)
                end
            end
        end

    end
end


---- menu wearable state


-- RegisterNetEvent("dust_radial:OpenStateMenu", function(ClothesComponents)
  
--     TriggerEvent("redemrp_menu_base:getData", function(MenuData)
--         MenuData.CloseAll()
  
--         local elements = {}
--         table.insert(elements, {label = "Manches", value = "sleeves", desc = "Remonter ses manches"})
  
--         MenuData.Open('default', GetCurrentResourceName(), 'craft', {
--             title = "Vêtements",
--             subtext = "Recettes",
--             align = 'top-right',
--             elements = elements,
--         },
  
--         function(data, menu)
--             MenuData.CloseAll()
--             Wait(150)
--             if data.current.value == "sleeves" then
                
--             end
--         end,
  
--         function(data, menu)
--             menu.close()
--         end)
--     end)
--   end)
-- end


---------- ITEM CUSTOM CRAFTABLE ---------- 
----- POINT MENUS PAR TYPE ----
Citizen.CreateThread(function()
    while true do
        Wait(1)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        if isCreatorOpened then
            DrawLightWithRange(coords.x + 1, coords.y + 1, coords.z + 1, 255, 255, 255, 2.5, 10.0)
        end
        for k, v in pairs(Config.BaguesD) do
            local dist = Vdist(coords, v)
            if dist < 1.0 then
                TriggerEvent('dust_presskey', "Appuyez sur G")
                if IsControlJustReleased(0, 0x760A9C6F) then
                    local closestPlayer, closestDistance,  playerid, tgt1 = getClosestPlayer()
                    print (playerid, tgt1)
                    TriggerServerEvent("rdr_clothes_store:LoadClothes", 6, playerid, tgt1)
                end
            end
        end
    end
end)


------- MENU ------ 
RegisterNetEvent('rdr_clothes_store:OpenCustomClothesMenu')
AddEventHandler('rdr_clothes_store:OpenCustomClothesMenu', function(clothescategory, ClothesComponents, target, targetid)
    CustomCache = ClothesComponents
    if IsPedMale(target) then
        for k,v in pairs(clothes_list["male"]) do
            if CustomCache[clothescategory] == nil then
                CustomCache[clothescategory] = {}
                CustomCache[clothescategory].model = 0
                CustomCache[clothescategory].texture = 0
            end
        end
    else
        for k,v in pairs(clothes_list["female"]) do
            if CustomCache[clothescategory] == nil then
                CustomCache[clothescategory] = {}
                CustomCache[clothescategory].model = 0
                CustomCache[clothescategory].texture = 0
            end
        end
    end
    OldCustomCache = deepcopy(CustomCache)
    OpenCustomClothesMenu(clothescategory, target, targetid)
end)

function OpenCustomClothesMenu(clothescategory, target, targetid)
    MenuData.CloseAll()
    local elements = {}

    if IsPedMale(target) then
        local a = 1
            if clothes_list["male"][clothescategory] ~= nil then
            local category = clothes_list["male"][clothescategory]
            if CustomCache[clothescategory] == nil then
                CustomCache[clothescategory] = {}
                CustomCache[clothescategory].model = 0
                CustomCache[clothescategory].texture = 1
            end
            local options = {}
            for k, v in pairs(category) do
                table.insert(options, k .." Style")
            end
            table.insert(elements, {
                label = Config.Label[clothescategory].. " ($" .. Config.Price[clothescategory]..")" or v,
                value = CustomCache[clothescategory].model or 0,
                category = category,
                desc = "Changer le modèle",
                type = "slider",
                min = 0,
                max = #category,
                change_type = "model",
                id = a,
                options = options
            })
            a = a + 1
            options = {}

            for i = 1, GetMaxTexturesForModel(category, CustomCache[clothescategory].model or 1), 1 do
                table.insert(options, i.." Couleur")
            end
            table.insert(elements, {
                label = Config.Label[clothescategory] .. " Couleur" or v,
                value = CustomCache[clothescategory].texture or 1,
                category = category,
                desc = "Changer la couleur",
                type = "slider",
                min = 1,
                max = GetMaxTexturesForModel(category, CustomCache[clothescategory].model or 1),
                change_type = "texture",
                id = a,
                options = options
            })

            options = {}
            a = a + 1
            table.insert(elements, {
                label = Config.Label["save"] or "Save",
                value = "save",
                desc = "Valider $"..CurrentPrice
            })
        
        end

    else
        local a = 1
        if clothes_list["female"][clothescategory] ~= nil then
        local category = clothes_list["female"][clothescategory]
        if CustomCache[clothescategory] == nil then
            CustomCache[clothescategory] = {}
            CustomCache[clothescategory].model = 0
            CustomCache[clothescategory].texture = 1
        end
        local options = {}
        for k, v in pairs(category) do
            table.insert(options, k .." Style")
        end
        table.insert(elements, {
            label = Config.Label[clothescategory].. " ($" .. Config.Price[clothescategory]..")" or v,
            value = CustomCache[clothescategory].model or 0,
            category = category,
            desc = "Changer le modèle",
            type = "slider",
            min = 0,
            max = #category,
            change_type = "model",
            id = a,
            options = options
        })
        a = a + 1
        options = {}

        for i = 1, GetMaxTexturesForModel(clothescategory, CustomCache[clothescategory].model or 1), 1 do
            table.insert(options, i.." Couleur")
        end
        table.insert(elements, {
            label = Config.Label[clothescategory] .. " Couleur" or v,
            value = CustomCache[clothescategory].texture or 1,
            category = category,
            desc = "Changer la couleur",
            type = "slider",
            min = 1,
            max = GetMaxTexturesForModel(clothescategory, CustomCache[clothescategory].model or 1),
            change_type = "texture",
            id = a,
            options = options
        })

        options = {}
        a = a + 1
        table.insert(elements, {
            label = Config.Label["save"] or "Save",
            value = "save",
            desc = "Valider $"..CurrentPrice
        })
    end



    end
    MenuData.Open('default', GetCurrentResourceName(), 'DBagues_store_menu_category', {

        title = 'Vêtements',

        subtext = 'Fabriquer',

        align = 'top-left',

        elements = elements

    }, function(data, menu)
        if data.current.value == "save" then
            destory()
            menu.close()
            saveOutfit = true
            local info = {}
            info.model = CustomCache[clothescategory].model
            info.texture = CustomCache[clothescategory].texture
            TriggerServerEvent("rdr_clothes_store:GiveDBagues", info, CurrentPrice)
            OldCustomCache = {}
        else end
    end, function(data, menu)
        menu.close()
        OldCustomCache = {}
        destory()
        TriggerServerEvent("RedEM:server:LoadSkin")
    end, function(data, menu)
        MenuUpdateCustom(data, menu, clothescategory, targetid)
    end)
end

function MenuUpdateCustom(data, menu, clothescategory, targetid)
    if data.current.change_type == "model" then
        if CustomCache[clothescategory].model ~= data.current.value then
            CustomCache[clothescategory].texture = 1
            CustomCache[clothescategory].model = data.current.value
            if data.current.value > 0 then
                local options = {}
                -- print(GetMaxTexturesForModel(data.current.category, data.current.value))
                if GetMaxTexturesForModel(clothescategory, data.current.value) > 1 then
                    for i = 1, GetMaxTexturesForModel(clothescategory, data.current.value), 1 do
                        table.insert(options, i .. " Couleur")
                    end
                else
                    table.insert(options, "Sans")

                end
                menu.setElement(data.current.id + 1, "options", options)
                menu.setElement(data.current.id + 1, "max",
                    GetMaxTexturesForModel(clothescategory, data.current.value))
                menu.setElement(data.current.id + 1, "min", 1)
                menu.setElement(data.current.id + 1, "value", 1)
                menu.refresh()

            else
                menu.setElement(data.current.id + 1, "max", 0)
                menu.setElement(data.current.id + 1, "min", 0)
                menu.setElement(data.current.id + 1, "value", 0)
                menu.refresh()

            end
            if CurrentPrice ~= CalculatePriceCustom(clothescategory) then
                CurrentPrice = CalculatePriceCustom(clothescategory)
                local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING",
                    tostring(CurrentPrice .. "$"), Citizen.ResultAsLong())
                Citizen.InvokeNative(0xFA233F8FE190514C, str)
                Citizen.InvokeNative(0xE9990552DEC71600)
            end
            ChangeCustom(data.current.value, data.current.change_type, targetid)
        end
    end
    if data.current.change_type == "texture" then
        if CustomCache[clothescategory].texture ~= data.current.value then
            CustomCache[clothescategory].texture = data.current.value

            ChangeCustom(data.current.value, data.current.change_type, clothescategory ,targetid)
        end
    end

end

function ChangeCustom(id, change_type, clothescategory, targetid)
    if change_type == "model" then
        TriggerServerEvent("dust_clothes:askchange", targetid, clothescategory, id, 1)
    else
        TriggerServerEvent("dust_clothes:askchange", clothescategory, targetid, CustomCache[clothescategory].model, id, clothescategory)
    end
end



--- CHANGE OUTFIT TARGET ----
RegisterNetEvent('dust_clothes:changetargetoutfit', function(clothescategory, model, color)
    print (clothescategory, model, color)
    if model < 1 then
        Citizen.InvokeNative(0xD710A5007C2AC539, PlayerPedId(), GetHashKey(clothescategory), 0)
        NativeUpdatePedVariation(PlayerPedId())
    else
    if IsPedMale(PlayerPedId()) then
            if clothes_list["male"][clothescategory][model][color]['is_multiplayer'] == false then
                local drawable = clothes_list["male"][clothescategory][model][color].drawable
                local albedo = clothes_list["male"][clothescategory][model][color].albedo
                local normal = clothes_list["male"][clothescategory][model][color].normal
                local material = clothes_list["male"][clothescategory][model][color].material
                local palette = clothes_list["male"][clothescategory][model][color].palette
                local tint0 = clothes_list["male"][clothescategory][model][color].tint0
                local tint1 = clothes_list["male"][clothescategory][model][color].tint1
                local tint2 = clothes_list["male"][clothescategory][model][color].tint2
                UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
            else
            NativeSetPedComponentEnabled(PlayerPedId(),
                clothes_list["male"][clothescategory][model][color].hash, false, true, true)
            end

    else
        if clothes_list["female"][clothescategory][model][color]['is_multiplayer'] == false then
            local drawable = clothes_list["female"][clothescategory][model][color].drawable
            local albedo = clothes_list["female"][clothescategory][model][color].albedo
            local normal = clothes_list["female"][clothescategory][model][color].normal
            local material = clothes_list["female"][clothescategory][model][color].material
            local palette = clothes_list["female"][clothescategory][model][color].palette
            local tint0 = clothes_list["female"][clothescategory][model][color].tint0
            local tint1 = clothes_list["female"][clothescategory][model][color].tint1
            local tint2 = clothes_list["female"][clothescategory][model][color].tint2
            UpdateCustomClothes(PlayerPedId(), drawable, albedo, normal, material, palette, tint0, tint1, tint2)
        else
        NativeSetPedComponentEnabled(PlayerPedId(),
            clothes_list["female"][clothescategory][model][color].hash, false, true, true)
        end
    end

end
end)