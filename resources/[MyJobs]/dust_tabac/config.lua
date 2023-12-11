Config = {}

Config.Jobs = {
    [1] = "tabac_rhodes",
}

Config.WorkingTime = 5000
Config.DistanceToInteract = 2.0

Config.Atelier = vector3(1132.733, -975.8073, 68.39375) -- Creer toutes les balles
Config.Dep = {vector3(-860.3005, -742.7518, 55.94862)}
Config.Ret = {vector3(-859.9161, -745.316, 55.97301)}
Config.AnimDict = "amb_work@world_human_hammer@table@male_a@trans"
Config.CraftAnim = {
    "base_trans_base",
}

Config.GatherDict = 'mech_pickup@plant@milkweed'
Config.GatherAnim = 'stn_pick'

Config.PointSprite = 2033377404



Config.CraftingsReceipe = {
    ['moutwhisky'] = {
        type = 'tabac',
        Itemtocraft = 1,
        ItemReceipe1Name = 'orge',
        ItemReceipe1Amount = 4,
        ItemToGive = 'moutwhisky',
        Amount = 1,
        WorkingTime = 1,
        label = "Moût",
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/wheatseed.png', text = "Orge",count = "x4"}}
    },
    ['moutwhiskybon'] = {
        type = 'tabac',
        Itemtocraft = 1,
        ItemReceipe1Name = 'orge',
        ItemReceipe1Amount = 8,
        ItemToGive = 'moutwhiskybon',
        Amount = 1,
        WorkingTime = 1,
        label = "Moût gustatif",
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/wheatseed.png', text = "Orge",count = "x8"}}
    },
    ['moutgin'] = {
        type = 'tabac',
        Itemtocraft = 1,
        ItemReceipe1Name = 'myrtille',
        ItemReceipe1Amount = 3,
        ItemToGive = 'moutgin',
        Amount = 1,
        WorkingTime = 1,
        label = "Moût de baie",
        descriptionimages = {{src = 'nui://redemrp_inventory/html/items/consumable_herb_red_raspberry.png', text = "Myrtille",count = "x3"}}
    },
}

Config.RessourcesPoints = 
{
    vector3(1133.782, -956.7652, 67.55076),
    vector3(1129.399, -951.6478, 67.85186),
    vector3(1121.919, -943.8878, 67.77567),
    vector3(1125.394, -939.6705, 67.18135),
    vector3(1132.969, -946.3767, 67.57571),
    vector3(1140.655, -954.4439, 67.34454),
    vector3(1146.171, -952.8619, 67.34118),
    vector3(1141.208, -947.1807, 67.36861),
    vector3(1133.668, -940.3239, 67.16254),
    vector3(1127.883, -933.4817, 66.26767),
    vector3(1131.313, -927.491, 65.93847),
    vector3(1128.692, -927.7968, 65.75703),
    vector3(1135.44, -938.2279, 67.03042),
    vector3(1145.347, -947.1792, 67.25611),
    vector3(1150.477, -946.4276, 67.0145),
    vector3(1144.958, -938.6306, 66.66875),
    vector3(1137.085, -931.9973, 66.54157),
    vector3(1133.309, -924.8262, 65.99252),
    vector3(1149.828, -936.9662, 66.22805),
    vector3(1143.593, -931.8631, 66.45075),
    vector3(1138.663, -924.1354, 66.17007),
    vector3(1142.874, -924.0085, 66.25586),
    vector3(1147.586, -930.0139, 66.16891),
    vector3(1153.731, -934.629, 66.04104),

}

Config.ImportPoint = {
    [1]= vector3(2669.003, -1522.059, 45.96976), --- st denis
    [2]= vector3(-825.8802, -1241.919, 43.53639), -- bla
}

Config.BuyingPoint = {
    [1]= vector3(1129.005, -973.5934, 67.80357),
}

Config.Import = {
    ["sucre"] = {label= "Sucre", price = 0.05},
}

Config.Sell = {
    ["tabacsec"] = {label= "Tabac Séché", price = 0.1},
}

Config.Buy = {
    ["tabacsec"] = {label= "Tabac Séché", price = 0.1},
}

Config.SellNPC = {
    ["Rhodes"] = {heading = 9.0 , coords = vector3(1128.219, -976.7922, 67.83706), interact = vector3(1127.59, -976.4761, 67.82214)},
}

Config.Blips = {
    {name = "Champs de tabac", sprite = 2017085833, x = 1136.0, y = -947.0, z = 68.0, color = 'BLIP_MODIFIER_MP_COLOR_14'},
    {name = "Séchoir à tabac", sprite = 2017085833, x = -861.0, y = -743.0, z = 56.0, color = 'BLIP_MODIFIER_MP_COLOR_14'},
}