--DO NOT RENAME THE RESSOURCE !!!

Config = {}

Config.rsdNUI = false -- If you use our RSD_NUI else natif prompt

Config.DistanceDoor = 1.7 -- Distance check doors

Config.KeyOpen = 0x760A9C6F --G
Config.KeyBreak = 0xCEFD9220 --E
Config.ItemBreak = "lockpick" -- item to break a door
Config.Break = true -- If you the item breaks when you break a door
Config.MinChance = 1 -- chance min to break the item when you break a door
Config.MaxChance = 10 -- chance max to break the item when you break a door
Config.Chance = 3 -- if the chance is at or below this value, the item will break

Config.Sound = true --If you want sound when you open or close a door
Config.PropsKey = "P_KEY02X" --Props key when you open or close a door

--LOCKPICK SYSTEME >>
function RSD_Lock()
    return exports.rsd_lockpick:StartLockPick(0) --// Set your own lockpick system, if you use RSD_LOCKPICK don't touch !
end
-------------------

--LANGUAGE
Config.Language = {
    [1] = "G",
    [2] = "E",
    [3] = "Ouvrir",
    [4] = "Fermer",
    [5] = "Forcer",
    [6] = "Le crochet ~o~ a cassé...",
    [7] = "~t~Pas assez ~q~de crochet",
    [8] = "Porte ~o~ ouverte",
    [9] = "~t~-1 Crochet",
    [10] = "~t~Vous n'avez pas ~q~les clefs",
    [11] = "Porte",
}

-- TO GET DOORS >> https://github.com/femga/rdr3_discoveries/blob/master/doorHashes/doorhashes.lua (search by name & vector to find the according hash)


Config.Doors = {
--SHERIFF--
    --VALENTINE--
    {
        door = 1988748538, --Door hash
        CloseRotation = 10.0, --Rotation when closed
        DoorCoord  = vector3(-275.34, 802.67, 119.42), --Coords of trigger // in front of a door
        door2 = 0, --Door hash // if it's double doors else set 0
        CloseRotation2 = 0, --Rotation when closed // if it's double doors else set 0
        locked = true, -- If you want the door to be locked at start
        breakable = true, -- If you want the door could be breaked with "Config.ItemBreak"
        jobs = {"sheriff_rhodes"}, --All Job that can acces to the door // set all if you don't want a job
        needkey = false, -- If you want to use an item "key"
        keys = '', --key item
    },
    {
        door = 395506985,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-275.85, 812.02, 118.41),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 1508776842,
        CloseRotation = -80.0,
        DoorCoord  = vector3(-270.77, 810.02, 118.39),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 535323366,
        CloseRotation = -80.0,
        DoorCoord  = vector3(-275.03, 809.27, 118.36),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 295355979,
        CloseRotation = 10.0,
        DoorCoord  = vector3(-273.47, 809.96, 118.36),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 193903155,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-272.06, 808.25, 118.36),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },

    --RHODES--
    {
        door = 349074475,
        CloseRotation = 160.0,
        DoorCoord  = vector3(1359.71, -1305.97, 76.76),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 1614494720,
        CloseRotation = -110.0,
        DoorCoord  = vector3(1359.12, -1297.56, 76.78),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 1878514758,
        CloseRotation = 70.0,
        DoorCoord  = vector3(1357.44, -1301.78, 77.71),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 393076024,
        CloseRotation = 70.0,
        DoorCoord  = vector3(1326.427734375,-1319.0665283203,76.890922546387),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 743565308,
        CloseRotation = 341.0,
        DoorCoord  = vector3(1329.8211669922,-1329.1970214844,76.891494750977),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    --ST DENIS--
    {
        door = 1711767580,
        CloseRotation = -360.35,
        DoorCoord  = vector3(2502.42, -1307.85, 47.95),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1995743734,
        CloseRotation = 180.35,
        DoorCoord  = vector3(2499.75, -1309.87, 47.95),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2515591150,
        CloseRotation = 180.35,
        DoorCoord  = vector3(2503.63, -1309.87, 47.95),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3365520707,
        CloseRotation = -360.35,
        DoorCoord  = vector3(2498.5, -1307.85, 47.95),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --STRAWBERRY--
    {
        door = 902070893,
        CloseRotation = -115.0,
        DoorCoord  = vector3(-1814.58, -353.71, 161.43),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 1207903970,
        CloseRotation = -26.0,
        DoorCoord  = vector3(-1811.40, -352.19, 161.39),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 1821044729,
        CloseRotation = 164,
        DoorCoord  = vector3(-1806.6751708984,-350.31280517578,163.6475982666),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 1514359658,
        CloseRotation = 158,
        DoorCoord  = vector3(-1812.6691894531,-345.08489990234,163.6475982666),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },

    --BLACKWATER--
    {
        door = 3410720590,
        CloseRotation = 90.41,
        DoorCoord  = vector3(-756.92, -1269.25, 44.03),
        door2 = 3821185084,
        CloseRotation2 = 90.0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 2810801921,
        CloseRotation = -90.0,
        DoorCoord  = vector3(-768.86, -1269.28, 44.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 2167775834,
        CloseRotation = -90.0,
        DoorCoord  = vector3(-763.53, -1262.97, 44.06),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 2514996158,
        CloseRotation = 90.0,
        DoorCoord  = vector3(-765.56, -1264.12, 44.02),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"sheriff_bla"},
        needkey = false,
        keys = '',
    },

    --ARMADILLO--
    {
        door = 4016307508,
        CloseRotation = 295.37,
        DoorCoord  = vector3(-3620.73, -2600.75, -13.34),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 4235597664,
        CloseRotation = 292.54,
        DoorCoord  = vector3(-3619.08, -2604.84, -13.34),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    
---------------------------------------------------------------------------------


--BANK 
    --RHODES
    {
        door = 3088209306,
        CloseRotation = 319.0,
        DoorCoord  = vector3(1295.75, -1297.93, 77.04),
        door2 = 3317756151,
        CloseRotation2 = -220.0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2058564250,
        CloseRotation = -40.0,
        DoorCoord  = vector3(1285.63, -1303.4, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1634148892,
        CloseRotation = -220.0,
        DoorCoord  = vector3(1295.49, -1305.03, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3142122679,
        CloseRotation = -40.0,
        DoorCoord  = vector3(1279.34, -1310.57, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2513778780,
        CloseRotation = -220.0,
        DoorCoord  = vector3(1278.46, -1311.7, 76.89),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3483244267,
        CloseRotation = -130.0,
        DoorCoord  = vector3(1283.08, -1308.89, 77.04),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --ST DENIS
    {
        door = 1634115439,
        CloseRotation = -155.0,
        DoorCoord  = vector3(2647.94, -1300.3, 52.25),
        door2 = 965922748,
        CloseRotation2 = -155.0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1751238140,
        CloseRotation = -200.0,
        DoorCoord  = vector3(2643.84, -1300.6, 52.25),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --BLACKWATER
    {
        door = 2817192481,
        CloseRotation = -90.0,
        DoorCoord  = vector3(-817.09, -1278.29, 43.64),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2117902999,
        CloseRotation = 0.0,
        DoorCoord  = vector3(-816.18, -1276.68, 43.64),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1462330364,
        CloseRotation = 90.0,
        DoorCoord  = vector3(-817.47, -1273.84, 43.65),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --VALENTINE
    {
        door = 3886827663,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-308.11, 779.62, 118.7),
        door2 = 2642457609,
        CloseRotation2 = 10.0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2343746133,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-301.94, 771.75, 117.72),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1340831050,
        CloseRotation = 10.05,
        DoorCoord  = vector3(-311.75, 774.67, 117.72),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3718620420,
        CloseRotation = 10.36,
        DoorCoord  = vector3(-311.06, 770.12, 117.7),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 334467483,
        CloseRotation = 100.0,
        DoorCoord  = vector3(-302.93, 767.6, 117.69),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 576950805,
        CloseRotation = 170.0,
        DoorCoord  = vector3(-307.76, 766.34, 117.7),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2307914732,
        CloseRotation = 10.0,
        DoorCoord  = vector3(-301.51, 762.98, 117.73),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },


    --ARMADILLO
    {
        door = 3101287960,
        CloseRotation = 0.0,
        DoorCoord = vector3(-3665.44, -2620.98, -13.57),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3550475905,
        CloseRotation = 180.0,
        DoorCoord = vector3(-3661.68, -2627.45, -13.59),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1366165179,
        CloseRotation = 0.0,
        DoorCoord = vector3(-3662.61, -2638.93, -13.58),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
---------------------------------------------------------------------------------


--DOCTOR 
    --VALENTINE
    {
        door = 3588026089,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-282.81, 803.85, 118.39),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 4067537969,
        CloseRotation = -170.0,
        DoorCoord  = vector3(-286.65, 809.76, 118.39),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3439738919,
        CloseRotation = 97.0,
        DoorCoord  = vector3(-281.18, 815.41, 118.39),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 925575409,
        CloseRotation = 10.0,
        DoorCoord  = vector3(-290.72, 813.29, 118.41),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --STRAWBERRY
    {
        door = 2543619259,
        CloseRotation = 155.83,
        DoorCoord  = vector3(-1802.68, -429.22, 158.83),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    --ST DENIS
    {
        door = 586229709,
        CloseRotation = 268.83,
        DoorCoord  = vector3(2723.96, -1227.64, 50.37),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"doctor_stdenis"},
        needkey = false,
        keys = '',
    },
    {
        door = 1289094734,
        CloseRotation = 268.20,
        DoorCoord  = vector3(2727.65, -1229.83, 50.36),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"doctor_stdenis"},
        needkey = false,
        keys = '',
    },
    {
        door = 82263429,
        CloseRotation = 90,
        DoorCoord  = vector3(2726.5541992188,-1234.8221435547,49.363960266113),
        door2 = 994323006,
        CloseRotation2 = 270,
        locked = true,
        breakable = false, 
        jobs = {"doctor_stdenis"},
        needkey = false,
        keys = '',
    },
---------------------------------------------------------------------------------


--SALOON 
    --BLACKWATER
    {
        door = 3311897912,
        CloseRotation = -270.0,
        DoorCoord  = vector3(-810.5, -1319.62, 43.67),
        door2 = 3526207172,
        CloseRotation2 = 270.0,
        locked = false,
        breakable = false, 
        jobs = {"saloon_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 2452247196,
        CloseRotation = 270.0,
        DoorCoord  = vector3(-810.63, -1312.85, 43.68),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {"saloon_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 2320881007,
        CloseRotation = 180.0,
        DoorCoord  = vector3(-810.47, -1327.6, 43.67),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {"saloon_bla"},
        needkey = false,
        keys = '',
    },
    {
        door = 815031507,
        CloseRotation = 90.0,
        DoorCoord  = vector3(-824.05, -1322.25, 43.68),
        door2 = 0,
        CloseRotation2 = 0,
        locked = false,
        breakable = false, 
        jobs = {"saloon_bla"},
        needkey = false,
        keys = '',
    },

    --ST DENIS
    {
        door = 3895438792,
        CloseRotation = -315.0,
        DoorCoord  = vector3(2628.55, -1221.17, 53.4),
        door2 = 804086151,
        CloseRotation2 = 225.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2999855503,
        CloseRotation = -180.0,
        DoorCoord  = vector3(2639.64, -1219.97, 59.61),
        door2 = 2693793043,
        CloseRotation2 = 180.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3461406868,
        CloseRotation = -180.0,
        DoorCoord  = vector3(2636.45, -1219.69, 59.61),
        door2 = 1275780106,
        CloseRotation2 = 180.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 3856177940,
        CloseRotation = -180.0,
        DoorCoord  = vector3(2633.21, -1219.85, 59.61),
        door2 = 3371065664,
        CloseRotation2 = 180.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    --SALOON FAUBOURG
    {
        door = 2653589767,
        CloseRotation = 233,
        DoorCoord  = vector3(2793.1120605469,-1173.7476806641,46.923934936523),
        door2 = 2960930218,
        CloseRotation2 = 65,
        locked = true,
        breakable = false, 
        jobs = {"saloon_faubourg"},
        needkey = false,
        keys = '',
    },
    {
        door = 4220752030,
        CloseRotation = 238.5,
        DoorCoord  = vector3(2803.2788085938,-1163.5256347656,46.938804626465),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_faubourg"},
        needkey = false,
        keys = '',
    },

    --TUMBLEWEED
    {
        door = 223504277,
        CloseRotation = -195.0,
        DoorCoord  = vector3(-5514.29, -2917.19, 1.66),
        door2 = 4292889829,
        CloseRotation2 = -15.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1322586500,
        CloseRotation = 30.0,
        DoorCoord  = vector3(-5514.38, -2913.12, 1.64),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 2094297354,
        CloseRotation = 30.0,
        DoorCoord  = vector3(-5515.13, -2901.66, -1.75),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1892085175,
        CloseRotation = -60.0,
        DoorCoord  = vector3(-5518.68, -2912.57, -1.75),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

    --RHODES
    {
        door = 834296435,
        CloseRotation = 80.0,
        DoorCoord  = vector3(1352.77, -1376.93, 80.5),
        door2 = 1124531468,
        CloseRotation2 = 80.0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 3728169477,
        CloseRotation = -10.0,
        DoorCoord  = vector3(1334.68, -1379.95, 80.5),
        door2 = 3392483841,
        CloseRotation2 = -10.0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 3047627494,
        CloseRotation = -10.0,
        DoorCoord  = vector3(1330.58, -1367.99, 80.49),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 3434364936,
        CloseRotation = -100.0,
        DoorCoord  = vector3(1336.14, -1371.55, 84.29),
        door2 = 3215894013,
        CloseRotation2 = -100.0,
        locked = true,
        breakable = false, 
        jobs = {"saloon_rhodes"},
        needkey = false,
        keys = '',
    },

    --VALENTINE
    {
        door = 261929195,
        CloseRotation = 190.0,
        DoorCoord  = vector3(-315.94, 818.58, 118.98),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 583884620,
        CloseRotation = 190.0,
        DoorCoord  = vector3(-306.82, 820.26, 118.98),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 968874193,
        CloseRotation = 280.0,
        DoorCoord  = vector3(-316.84, 816.85, 121.98),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 1154795503,
        CloseRotation = 190.0,
        DoorCoord  = vector3(-306.72, 820.53, 121.97),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
---------------------------------------------------------------------------------



--JAIL 
    {
        door = 1121239638,
        CloseRotation = -49.0,
        DoorCoord  = vector3(3326.77, -706.36, 44.32),
        door2 = 2617210026,
        CloseRotation2 = -47.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 906662604,
        CloseRotation = -49.0,
        DoorCoord  = vector3(3332.76, -701.05, 44.02),
        door2 = 3984556459,
        CloseRotation2 = -47.0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },

---------------------------------------------------------------------------------



--GUNSMITH 
    --RHODES
    {
        door = 1410133961,
        CloseRotation = -105.0,
        DoorCoord  = vector3(1325.14, -1324.22, 77.89),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 393076024,
        CloseRotation = -175,
        DoorCoord  = vector3(1326.427734375,-1319.0665283203,76.890922546387),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 743565308,
        CloseRotation = 86,
        DoorCoord  = vector3(1329.8211669922,-1329.1970214844,76.891494750977),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 934926308,
        CloseRotation = 90,
        DoorCoord  = vector3(1319.5262451172,-1324.3895263672,76.891494750977),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"armurier_rhodes"},
        needkey = false,
        keys = '',
    },
    --SAINT DENIS
    {
        door = 1057071735,
        CloseRotation = 25,
        DoorCoord  = vector3(2719.8837890625,-1281.5419921875,48.637580871582),
        door2 = 3283200993,
        CloseRotation2 = 206,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },
    {
        door = 841127028,
        CloseRotation = 24.5,
        DoorCoord  = vector3(2710.5659179688,-1291.2041015625,48.632297515869),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {""},
        needkey = false,
        keys = '',
    },


--------------------------------------------------------------------------------------

--GENERAL STORE
    --RHODES

    {
        door = 972368328,
        CloseRotation = 26,
        DoorCoord  = vector3(1325.2160644531,-1294.3470458984,75.99486541748),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"store_rhodes"},
        needkey = false,
        keys = '',
    },
    {
        door = 1060413677,
        CloseRotation = -116,
        DoorCoord  = vector3(1332.6689453125,-1291.1726074219,76.009201049805),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"store_rhodes"},
        needkey = false,
        keys = '',
    },
    --STRAWBERRY

        {
            door = 1595373759,
            CloseRotation = 239,
            DoorCoord  = vector3(-1794.4954833984,-381.68154907227,159.314453125),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"store_straw"},
            needkey = false,
            keys = '',
        },
        {
            door = 1854467923,
            CloseRotation = 54,
            DoorCoord  = vector3(-1787.3168945313,-387.2438659668,159.31578063965),
            door2 = 0,
            CloseRotation2 = 0,
            locked = true,
            breakable = false, 
            jobs = {"store_straw"},
            needkey = false,
            keys = '',
        },

--------------------------------------------------------------------------------------

--FORGE
    --DOGWATER

    {
        door = 752949299,
        CloseRotation = 0,
        DoorCoord  = vector3(-873.94134521484,-1293.244140625,42.106128692627),
        door2 = 1538487767,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"forge"},
        needkey = false,
        keys = '',
    },

--------------------------------------------------------------------------------------

--FERME
    --DOGWATER 

    {
        door = 1606546482,
        CloseRotation = 237,
        DoorCoord  = vector3(-1646.2409667969,-1367.1358642578,83.465660095215),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"fermier"},
        needkey = false,
        keys = '',
    },
    {
        door = 2310818050,
        CloseRotation = 240,
        DoorCoord  = vector3(-1637.7155761719,-1352.6480712891,83.466453552246),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"fermier"},
        needkey = false,
        keys = '',
    },
    {
        door = 818583340,
        CloseRotation = 325,
        DoorCoord  = vector3(-1649.2072753906,-1359.2379150391,83.464546203613),
        door2 = 0,
        CloseRotation2 = 0,
        locked = true,
        breakable = false, 
        jobs = {"fermier"},
        needkey = false,
        keys = '',
    },
}

--UNLOCK DOORS 
Config.UnlocksDoors = {
    4093895974,--BATH ANNESBURG
    142240370,--BATH VALENTINE
    1523300673,--BATH BLACKWATER
    1256786197,--BATH STRAWBERRY
    1102743282,--BATH VANHORN
    779421929,--BATH STDENIS
    2446974165,--BATH RHODES

}

--DELETE DOORS
Config.DeletedDoors = {
    73503,
}