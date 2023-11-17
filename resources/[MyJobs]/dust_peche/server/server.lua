RedEM = exports["redem_roleplay"]:RedEM()


data = {}
TriggerEvent("redemrp_inventory:getData",function(call)
    data = call
end)

-- make bait useable
RegisterServerEvent("RegisterUsableItem:p_baitbread01x", function(source)
    print "get"
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_baitbread01x")
end)

RegisterServerEvent("RegisterUsableItem:p_baitcorn01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_baitcorn01x")
end)

RegisterServerEvent("RegisterUsableItem:p_baitcheese01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_baitcheese01x")
end)

RegisterServerEvent("RegisterUsableItem:p_baitworm01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_baitworm01x")
end)

RegisterServerEvent("RegisterUsableItem:p_baitcricket01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_baitcricket01x")
end)

RegisterServerEvent("RegisterUsableItem:p_crawdad01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_crawdad01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finishedragonfly01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finishedragonfly01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finisdfishlure01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finisdfishlure01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finishdcrawd01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finishdcrawd01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finishedragonflylegendary01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finishedragonflylegendary01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finisdfishlurelegendary01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finisdfishlurelegendary01x")
end)

RegisterServerEvent("RegisterUsableItem:p_finishdcrawdlegendary01x", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_finishdcrawdlegendary01x")
end)

RegisterServerEvent("RegisterUsableItem:p_lgoc_spinner_v4", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_lgoc_spinner_v4")
end)

RegisterServerEvent("RegisterUsableItem:p_lgoc_spinner_v6", function(source)
    TriggerClientEvent("dust-fishing:client:usebait", source, "p_lgoc_spinner_v6")
end)
-- end of make bait useable

-- remove bait when used on fishing rod
RegisterServerEvent('dust-fishing:server:removeBaitItem')
AddEventHandler('dust-fishing:server:removeBaitItem', function(item)
    local src = source
    local Player = RedEM.GetPlayer(src)
    local itemData = data.getItem(src, item)
    itemData.RemoveItem(item, 1)
end)

local fishEntity = {
    [`A_C_FISHBLUEGIL_01_MS`]        = "a_c_fishbluegil_01_ms",
    [`A_C_FISHBLUEGIL_01_SM`]        = "a_c_fishbluegil_01_sm",
    [`A_C_FISHBULLHEADCAT_01_MS`]    = "a_c_fishbullheadcat_01_ms",
    [`A_C_FISHBULLHEADCAT_01_SM`]    = "a_c_fishbullheadcat_01_sm",
    [`A_C_FISHCHAINPICKEREL_01_MS`]  = "a_c_fishchainpickerel_01_ms",
    [`A_C_FISHCHAINPICKEREL_01_SM`]  = "a_c_fishchainpickerel_01_sm",
    [`A_C_FISHCHANNELCATFISH_01_LG`] = "a_c_fishchannelcatfish_01_lg",
    [`A_C_FISHCHANNELCATFISH_01_XL`] = "a_c_fishchannelcatfish_01_xl",
    [`A_C_FISHLAKESTURGEON_01_LG`]   = "a_c_fishlakesturgeon_01_lg",
    [`A_C_FISHLARGEMOUTHBASS_01_LG`] = "a_c_fishlargemouthbass_01_lg",
    [`A_C_FISHLARGEMOUTHBASS_01_MS`] = "a_c_fishlargemouthbass_01_ms",
    [`A_C_FISHLONGNOSEGAR_01_LG`]    = "a_c_fishlongnosegar_01_lg",
    [`A_C_FISHMUSKIE_01_LG`]         = "a_c_fishmuskie_01_lg",
    [`A_C_FISHNORTHERNPIKE_01_LG`]   = "a_c_fishnorthernpike_01_lg",
    [`A_C_FISHPERCH_01_MS`]          = "a_c_fishperch_01_ms",
    [`A_C_FISHPERCH_01_SM`]          = "a_c_fishperch_01_sm",
    [`A_C_FISHRAINBOWTROUT_01_LG`]   = "a_c_fishrainbowtrout_01_lg",
    [`A_C_FISHRAINBOWTROUT_01_MS`]   = "a_c_fishrainbowtrout_01_ms",
    [`A_C_FISHREDFINPICKEREL_01_MS`] = "a_c_fishredfinpickerel_01_ms",
    [`A_C_FISHREDFINPICKEREL_01_SM`] = "a_c_fishredfinpickerel_01_sm",
    [`A_C_FISHROCKBASS_01_MS`]       = "a_c_fishrockbass_01_ms",
    [`A_C_FISHROCKBASS_01_SM`]       = "a_c_fishrockbass_01_sm",
    [`A_C_FISHSALMONSOCKEYE_01_LG`]  = "a_c_fishsalmonsockeye_01_lg",
    [`A_C_FISHSALMONSOCKEYE_01_ML`]  = "a_c_fishsalmonsockeye_01_ml",
    [`A_C_FISHSALMONSOCKEYE_01_MS`]  = "a_c_fishsalmonsockeye_01_ms",
    [`A_C_FISHSMALLMOUTHBASS_01_LG`] = "a_c_fishsmallmouthbass_01_lg",
    [`A_C_FISHSMALLMOUTHBASS_01_MS`] = "a_c_fishsmallmouthbass_01_ms",
}

local fishNames = {
    [`A_C_FISHBLUEGIL_01_MS`]        = Config.fishData.A_C_FISHBLUEGIL_01_MS[1],
    [`A_C_FISHBLUEGIL_01_SM`]        = Config.fishData.A_C_FISHBLUEGIL_01_SM[1],
    [`A_C_FISHBULLHEADCAT_01_MS`]    = Config.fishData.A_C_FISHBULLHEADCAT_01_MS[1],
    [`A_C_FISHBULLHEADCAT_01_SM`]    = Config.fishData.A_C_FISHBULLHEADCAT_01_SM[1],
    [`A_C_FISHCHAINPICKEREL_01_MS`]  = Config.fishData.A_C_FISHCHAINPICKEREL_01_MS[1],
    [`A_C_FISHCHAINPICKEREL_01_SM`]  = Config.fishData.A_C_FISHCHAINPICKEREL_01_SM[1],
    [`A_C_FISHCHANNELCATFISH_01_LG`] = Config.fishData.A_C_FISHCHANNELCATFISH_01_LG[1],
    [`A_C_FISHCHANNELCATFISH_01_XL`] = Config.fishData.A_C_FISHCHANNELCATFISH_01_XL[1],
    [`A_C_FISHLAKESTURGEON_01_LG`]   = Config.fishData.A_C_FISHLAKESTURGEON_01_LG[1],
    [`A_C_FISHLARGEMOUTHBASS_01_LG`] = Config.fishData.A_C_FISHLARGEMOUTHBASS_01_LG[1],
    [`A_C_FISHLARGEMOUTHBASS_01_MS`] = Config.fishData.A_C_FISHLARGEMOUTHBASS_01_MS[1],
    [`A_C_FISHLONGNOSEGAR_01_LG`]    = Config.fishData.A_C_FISHLONGNOSEGAR_01_LG[1],
    [`A_C_FISHMUSKIE_01_LG`]         = Config.fishData.A_C_FISHMUSKIE_01_LG[1],
    [`A_C_FISHNORTHERNPIKE_01_LG`]   = Config.fishData.A_C_FISHNORTHERNPIKE_01_LG[1],
    [`A_C_FISHPERCH_01_MS`]          = Config.fishData.A_C_FISHPERCH_01_MS[1],
    [`A_C_FISHPERCH_01_SM`]          = Config.fishData.A_C_FISHPERCH_01_SM[1],
    [`A_C_FISHRAINBOWTROUT_01_LG`]   = Config.fishData.A_C_FISHRAINBOWTROUT_01_LG[1],
    [`A_C_FISHRAINBOWTROUT_01_MS`]   = Config.fishData.A_C_FISHRAINBOWTROUT_01_MS[1],
    [`A_C_FISHREDFINPICKEREL_01_MS`] = Config.fishData.A_C_FISHREDFINPICKEREL_01_MS[1],
    [`A_C_FISHREDFINPICKEREL_01_SM`] = Config.fishData.A_C_FISHREDFINPICKEREL_01_SM[1],
    [`A_C_FISHROCKBASS_01_MS`]       = Config.fishData.A_C_FISHROCKBASS_01_MS[1],
    [`A_C_FISHROCKBASS_01_SM`]       = Config.fishData.A_C_FISHROCKBASS_01_SM[1],
    [`A_C_FISHSALMONSOCKEYE_01_LG`]  = Config.fishData.A_C_FISHSALMONSOCKEYE_01_LG[1],
    [`A_C_FISHSALMONSOCKEYE_01_ML`]  = Config.fishData.A_C_FISHSALMONSOCKEYE_01_ML[1],
    [`A_C_FISHSALMONSOCKEYE_01_MS`]  = Config.fishData.A_C_FISHSALMONSOCKEYE_01_MS[1],
    [`A_C_FISHSMALLMOUTHBASS_01_LG`] = Config.fishData.A_C_FISHSMALLMOUTHBASS_01_LG[1],
    [`A_C_FISHSMALLMOUTHBASS_01_MS`] = Config.fishData.A_C_FISHSMALLMOUTHBASS_01_MS[1],
}

-- add fish caught to inventory
RegisterServerEvent('dust-fishing:FishToInventory')
AddEventHandler("dust-fishing:FishToInventory", function(fishModel)
    local src = source
    local Player = RedEM.GetPlayer(src)
    local fish = fishEntity[fishModel]
    local itemData = data.getItem(src, fish)
    itemData.AddItem(fish, 1)
end)
