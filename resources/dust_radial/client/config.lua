Config = {}

Config.RagdollKey = 0xF3830D8E 
Config.HandsUpKey = 0x8CC9CD42 -- x 
Config.MenuKey = 0x8AAA0AD4 -- b

Config.HandsUpAnim = {
[1] = 	{dict= "mech_loco_f@generic@reaction@handsup@unarmed@normal", anim = "loop"},
[2] = 	{dict= "mech_loco_f@generic@reaction@handsup@unarmed@tough", anim = "loop"},
[3] = 	{dict= "mech_loco_m@generic@reaction@handsup@unarmed@normal", anim = "loop"},
[4] = 	{dict= "mech_loco_m@generic@reaction@handsup@unarmed@tough", anim = "loop"},
[5] = 	{dict= "script_common@other@unapproved", anim = "guard_handsup_loop"},
[6] = 	{dict= "script_proc@robberies@shop@strgen", anim ="handsup_register"},
}



Config.CraftingsReceipe = {
    ['bow'] = {
        label = "Arc",
        desc = "1 Petit Bois + 1 Fil",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'fil',
        ItemReceipe2Amount = 1,
        ItemToGive = 'WEAPON_BOW',
        Amount = 1,
        WorkingTime = 5,
    },
    ['arrow'] = {
        label = "Flèches",
        desc = "1 bois + 1 silex",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 1,
        ItemReceipe2Name = 'silex',
        ItemReceipe2Amount = 1,
        ItemToGive = 'ammo_arrow',
        Amount = 10,
        WorkingTime = 5,
    },
    ['spit'] = {
        label = "Feu de camp",
        desc = "3 Petits Bois",
        ItemReceipe1Name = 'petitbois',
        ItemReceipe1Amount = 3,
        ItemToGive = 'spit',
        Amount = 1,
        WorkingTime = 5,
    },
}

Config.WorkingTime = 3000
Config.BlipSprite = -2039778370

Config.PetitBois = {
    [1] = vector3(1378.687, -987.7832, 50.89909), --- Rhodes 
    [2] = vector3(1876.99, -63.12452, 54.71591), --- emerald
    [3] = vector3(-1918.058, -1195.498, 79.22073), --- bw
    [4] = vector3(-1372.065, 552.1296, 106.9494), --- straw

}

Config.Silex = {
    [1] = vector3(717.4515, -763.868, 45.52427), --- rhodes
    [2] = vector3(1281.436, 858.6588, 102.7366), --- emerald
    [3] = vector3(-1384.463, -756.5168, 93.43803), --- bw
    [4] = vector3(-1570.97, 789.9352, 140.7988), --- straw
}

Config.Fil = {
    [1] = vector3(-760.0312, -1238.9, 43.63919), --- bw
    [2] = vector3(1404.149, -1303.683, 77.80862), --- Rhodes
}