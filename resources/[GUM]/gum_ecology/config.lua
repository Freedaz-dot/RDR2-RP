Config = {}

Config.discordHook = false
Config.webhookLink = ""
Config.webhookColor = 16755884
Config.webhookLanguage = {
    [1] = "Picked animal : ",
    [2] = "Picked herb :",
}


Config.Gum_Notify_NUI = false
Config.Image = "ecology"

Config.TimerForCounter = 300 --This count your herbs in your client cache.  (seconds)
Config.DeleteAfterGatherAnimal = false
Config.PickUp = "Ramasser"
Config.YouPick = "Vous avez ramsassé :"
Config.Header = "Plante"
Config.NotifyTime = 2000

Config.RandomRewardCount = 1-- - If its 0 disabled. This function make random reward count from herbs and animals
--Example you get 3 count from Wild Mint -> you here write 2. Now you get 2-3 counts from wild mint
Config.Herbs = {
    ["COMPOSITE_LOOTABLE_BURDOCK_ROOT_DEF"] =  { 
        blipSprite = 0,
        blipName = "barbane",
        coords = {
            {730.39, 1455.027, 189.9933, 20.0},
            {2008.353, 80.90195, 76.84789, 20.0},
            {-1555.16, -137.1601, 126.1494, 20.0},
            {-1731.651, -903.3646, 101.9832, 20.0}
        },
        maxSpawn = 11,--How much props is cached
        propMax = 11,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"barbane", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_HUMMINGBIRD_SAGE_DEF"] =  { 
        blipSprite = 0,
        blipName = "sauge colibri",
        coords = {
            {125.9249, 982.7355, 210.9116, 20.0},
            {2092.533, 116.5939, 70.97131, 20.0},
            {2099.604, 537.5249, 118.0403, 20.0},
            {-1236.328, -251.1011, 97.74142, 20.0},
            {-2193.928, -229.0691, 190.4592, 20.0},
            {-2262.983, -1381.816, 141.6076, 20.0}
        },
        maxSpawn = 9,--How much props is cached
        propMax = 9,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"saugeducolibri", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_WILD_MINT_DEF"] =  { 
        blipSprite = 0,
        blipName = "menthe sauvage",
        coords = {
            {981.2698, -1232.413, 59.98701, 40.0},
            {2628.306, 640.9957, 73.90434, 40.0},
            {1637.062, 1293.967, 157.1505, 40.0},
            {-905.2833, -538.3448, 71.80321, 40.0},
            {-1918.339, -1517.835, 105.9362, 40.0},
            {-1774.071, -301.3089, 181.8485, 40.0}
            
        },
        maxSpawn = 15,--How much props is cached
        propMax = 15,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"menthesauvage", 4, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_PARASOL_MUSHROOM_DEF"] =  { 
        blipSprite = 0,
        blipName = "coulemelle",
        coords = {
            {1370.721, -943.9273, 53.40933, 40.0},
            {1823.693, -375.2607, 44.39895, 40.0},
            {2118.517, 103.6463, 70.24908, 40.0},
            {2505.32, 706.6677, 75.97889, 40.0}
        },
        maxSpawn = 12,--How much props is cached
        propMax = 12,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"coulemelle", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_MILKWEED_DEF"] =  { 
        blipSprite = 0,
        blipName = "asclepiade",
        coords = {
            {2033.632, -1022.402, 43.35403, 40.0},
            {2262.735, -385.3071, 42.34921, 40.0},
            {-362.0679, 246.0696, 66.14816, 40.0}
        },
        maxSpawn = 12,--How much props is cached
        propMax = 12,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"asclepiade", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_ALASKAN_GINSENG_ROOT_DEF"] =  { 
        blipSprite = 0,
        blipName = "ginseng",
        coords = {
            {-302.4985, 1026.319, 130.711, 40.0},
            {-1483.752, 586.595, 115.9719, 40.0},
            {-2174.6, -357.8328, 187.5935, 40.0},
            {80.4672, 875.4934, 210.774, 40.0}


        },
        maxSpawn = 9,--How much props is cached
        propMax = 9,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"ginseng", 2, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_EVERGREEN_HUCKLEBERRY_DEF"] =  { 
        blipSprite = 0,
        blipName = "millefeuille",
        coords = {
            {851.8767, 135.159, 130.4784, 20.0},
            {1491.636, -1880.136, 50.86975, 20.0},
            {-24.4986, -579.2489, 59.20609, 20.0},
            {-1581.555, -715.8248, 134.1635, 20.0},
            {-2172.017, -1458.004, 138.2527, 20.0},
            {-796.1694, -845.8452, 53.48745, 20.0}
        },
        maxSpawn = 14,--How much props is cached
        propMax = 14,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"millefeuille", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_CHANTERELLES_DEF"] =  { 
        blipSprite = 0,
        blipName = "chanterelle",
        coords = {
            {1309.872, -934.049, 53.68198, 40.0},
            {1806.273, -537.7383, 42.75464, 40.0},
            {1986.373, -1237.09, 42.67138, 40.0},
            {-2223.153, -345.016, 180.5318, 40.0},
            {-1839.789, -1080.536, 84.08539, 40.0}
    
        },
        maxSpawn = 12,--How much props is cached
        propMax = 12,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"chanterelle", 2, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_RAMS_HEAD_DEF"] =  { 
        blipSprite = 0,
        blipName = "pouledesbois",
        coords = {
            {2203.435, -191.4243, 47.75746, 40.0},
            {-830.4506, 528.0355, 62.94004, 40.0},
            {-2468.545, 470.9136, 144.224, 40.0},
            {-1975.521, 684.8396, 123.636, 40.0},
            {609.2662, 1463.395, 190.9937, 40.0}
        },
        maxSpawn = 10,--How much props is cached
        propMax = 10,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"pouledesbois", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_DESERT_SAGE_DEF"] =  { 
        blipSprite = 0,
        blipName = "saugedudesert",
        coords = {
            {-733.5509, -1596.317, 54.26407, 30.0},
            {-1134.55, -1401.119, 71.66103, 30.0},
            {-753.8103, -834.6329, 51.96618, 30.0}
        },
        maxSpawn = 6,--How much props is cached
        propMax = 6,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"saugedudesert", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_COMMON_BULRUSH_DEF"] =  { 
        blipSprite = 0,
        blipName = "jonccommun",
        coords = {
            {-1575.593, -1044.217, 66.48918, 40.0},
            {-2747.818, -341.1842, 148.69, 40.0},
            {-742.4996, -999.5875, 43.59007, 40.0},
            {-432.2136, 43.71481, 43.29914, 40.0},
            {-748.4709, 529.829, 57.08273, 40.0},
            {-7.940222, 1513.159, 114.2799, 40.0},
            {2363.588, -661.6688, 41.96912, 40.0},
            {1745.068, -1170.501, 41.737, 40.0},
            {672.7833, -1267.653, 43.98404, 40.0},
            {177.8612, -608.237, 46.73311, 40.0}



        },
        maxSpawn = 15,--How much props is cached
        propMax = 15,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"jonccommun", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_ENGLISH_MACE_DEF"] =  { 
        blipSprite = 0,
        blipName = "achillevisqueuse",
        coords = {
            {1387.44, -1694.526, 67.42712, 40.0},
            {2614.06, -452.0338, 42.52893, 40.0},
            {-1712.851, -2483.187, 48.88267, 40.0},
            {-1150.858, -739.7994, 66.30392, 40.0}
        },
        maxSpawn = 11,--How much props is cached
        propMax = 11,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"achillevisqueuse", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_WILD_FEVERFEW_DEF"] =  { 
        blipSprite = 0,
        blipName = "camomillesauvage",
        coords = {
            {1141.5, 620.3223, 94.32296, 40.0},
            {2099.601, 98.6325, 70.67999, 40.0},
            {980.3708, 76.83521, 106.147, 40.0},
            {-1823.146, -954.3797, 108.086, 40.0},
            {-1425.799, 226.543, 100.2333, 40.0}
        
        },
        maxSpawn = 12,--How much props is cached
        propMax = 12,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"camomillesauvage", 3, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_BAY_BOLETE_DEF"] =  { 
        blipSprite = 0,
        blipName = "boletbai",
        coords = {
            {31.85101, 1196.117, 180.7177, 40.0},
            {1234.791, -256.5401, 96.95807, 40.0},
            {-1244.951, -262.1152, 99.44203, 40.0}
        },
        maxSpawn = 13,--How much props is cached
        propMax = 13,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"boletbai", 1, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_WINTERGREEN_BERRY_DEF"] =  { 
        blipSprite = 0,
        blipName = "baiedegaultherie",
        coords = {
            {1671.244, 768.7167, 136.2882, 40.0},
            {2393.585, -653.2073, 42.27081, 40.0},
            {1687.751, -1168.159, 41.45555, 40.0},
            {-1255.429, -90.68906, 84.14188, 40.0},
            {-2193.763, 428.9289, 129.5555, 40.0}
        },
        maxSpawn = 11,--How much props is cached
        propMax = 11,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"baiedegaultherie", 5, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["s_flyamush"] = {
        blipSprite = 0,
        blipName = "champignontoxique",
        coords = {
            {-162.5132, 1731.164, 170.8444, 10.0},
            {-1517.854, 739.0333, 125.9074, 3.0},
        },
        maxSpawn = 4,--How much props is cached
        propMax = 4,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"champignontoxique", 2, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_OLEANDER_SAGE_DEF"]= {
        blipSprite = 0,
        blipName = "laurierrose",
        coords = {
            {2353.372, -797.1579, 41.71259, 25.0},
            {1898.907, -866.2166, 42.17447, 25.0},
          
        },
        maxSpawn = 4,--How much props is cached
        propMax = 4,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"laurierrose", 2, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["COMPOSITE_LOOTABLE_WILD_CARROT_DEF"] ={
        blipSprite = 0,
        blipName = "carrotesauvages",
        coords = {
            {1460.549, -1149.898, 68.23778, 40.0},
            {1488.161, -1935.285, 46.63864, 40.0},
            {1488.161, -1935.285, 46.63864, 40.0},
            {1009.51, -734.7998, 87.55134, 40.0},
            {-1895.552, -330.5616, 184.6244, 40.0},
            {-1131.67, -417.085, 104.1743, 40.0},
            {-1305.521, 511.2329, 93.50326, 40.0},
            {-1126.826, -482.9183, 90.74239, 40.0},
            {-1126.826, -482.9183, 90.74239, 40.0},
          
        },
        maxSpawn = 15,--How much props is cached
        propMax = 15,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"carrotesauvages", 5, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    },
    ["blackberry01x"] = {
        blipSprite = 0,
        blipName = "myrtille",
        coords = {
            {1021.661, 1059.121, 160.5805, 20.0},
            {1567.619, 1680.003, 144.1251, 20.0},
            {-98.44931, 5.072357, 93.90585, 20.0},
            {-1880.196, -253.001, 192.71, 20.0},
            {-2332.361, 471.9337, 128.36, 20.0},
            {-1894.189, -1417.283, 103.386, 20.0}

        },
        maxSpawn = 15,--How much props is cached
        propMax = 15,--Spawn max props on limit
        canGatherMore = 1,--How much you can gather 1 entity
        grounded = 0.0,--(Grounded bring entity more under ground if you have flying prop)

        randomized = false,--If you enable Randomized you get 1 from list
        items = {
            {"myrtille", 5, "Ženšen"},
        },
        animDict = "",
        animPart = "",
        animDur = 0
    }
}
Config.Animals = {
    [GetHashKey("a_c_alligator_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"crocdecroco", 1, "Zvířecí Zub"},
            {"graisse", 2, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("a_c_alligator_03")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"graisse", 1, "Zvířecí Zub"},
    },   
    [GetHashKey("a_c_armadillo_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"graisse", 1, "Zvířecí Zub"},
            }
        }
    },    
    [GetHashKey("a_c_badger_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
			{"dentrongeur", 1, "Zvířecí Zub"},
            {"graisse", 1, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("a_c_bat_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"graisse", 1, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("a_c_bear_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 4, "Kvalitní maso"},
			{"patteours", 1, "Medvědí Tlapa"},
			{"graisse", 5, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_bearblack_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 3, "Kvalitní maso"},
		    {"patteours", 1, "Medvědí Tlapa"},
			{"graisse", 3, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_beaver_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Kvalitní maso"},
            {"queuedecastor", 1, "Malá Kůže"},
            {"dentrongeur", 1, "Malá Kůže"},
            {"graisse", 1, "Roh"},
        }
    },    
    [GetHashKey("a_c_bighornram_01")] =   {
        randomized = false,
        items = {
            {"viande", 1, "Maso"},
			{"corne", 1, "Roh"},
            {"graisse", 1, "Roh"},
        }
    },    
    [GetHashKey("a_c_boar_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 2, "Kvalitní maso"},
			{"graisse", 3, "Zvířecí Lůj"},
            {"defense", 2, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_buck_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 3, "Kvalitní maso"},
			{"boiscerf", 1, "Malé Paroží"}, 
            {"graisse", 3, "Malé Paroží"}, 
            
        }
    },    
    [GetHashKey("a_c_buffalo_01")] =   {
        randomized = false,
        items = {
            {"viande", 3, "Kvalitní maso"},
			{"corne", 2, "Roh"},
			{"graisse", 4, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_bull_01")] =   {
        randomized = false,
        items = {
            {"viande", 3, "Kvalitní maso"},
			{"corne", 1, "Roh"},
            {"graisse", 3, "Velká Kůže"},

        }
    },    
    [GetHashKey("a_c_cardinal_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
            {"bec", 1, "Pírko"},
        }
    },    
    [GetHashKey("a_c_californiacondor_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
            {"bec", 1, "Pírko"},
            {"serre", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_carolinaparakeet_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
            {"bec", 1, "Pírko"},

        }
    },    
    [GetHashKey("a_c_cedarwaxwing_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
            {"bec", 1, "Pírko"},
        }
    },    
    [GetHashKey("a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_chipmunk_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"queueecureuil", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_cougar_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"griffe", 2, "Dráp"},
        }
    },    
    [GetHashKey("a_c_cormorant_01")] =   {
        randomized = false,
        items = {
            {"bec", 1, "Maso"},
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_cow")] =   {
        randomized = false,
        items = {
            {"viande", 2, "Kvalitní maso"},
			{"corne", 1, "Roh"},
            {"graisse", 2, "Roh"},
            
        }
    },    
    [GetHashKey("a_c_coyote_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Maso"},
            {"graisse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_crab_01")] =   {
        randomized = false,
        items = {
            {"pincecrabe", 3, "Malá Kůže"},
        }
    
    },    
    [GetHashKey("a_c_crow_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
            {"bec", 1, "Pírko"},
        }
    },    
    [GetHashKey("a_c_deer_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"graisse", 2, "Malé Paroží"},
        }
    },    
    [GetHashKey("a_c_duck_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_eagle_01")] =   {
        randomized = false,
        items = {
            {"bec", 1, "Maso"},
            {"plume", 5, "Pírko"},
			{"serre", 2, "Dráp"},
        }
    },    
    [GetHashKey("a_c_egret_01")] =   {
        randomized = false,
        items = {
            {"bec", 1, "Maso"},
            {"plume", 5, "Pírko"},
        }
    },    
    [GetHashKey("a_c_elk_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 3, "Kvalitní maso"},
			{"boiscerf", 2, "Velké Paroží"},
			{"graisse", 3, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_fox_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Maso"},
			{"queuerenard", 1, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("a_c_frogbull_01")] =   {
        randomized = false,
        items = {
            {"peauvisqueuse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_gilamonster_01")] =   {
        randomized = false,
        items = {
            {"peauvisqueuse", 1, "Velká Kůže"},
            {"glandevenin", 2, "Velká Kůže"},
        }
    },    
    [GetHashKey("a_c_goat_01")] =   {
        randomized = false,
        items = {
            {"viande", 1, "Kvalitní maso"},
			{"corne", 1, "Roh"},
            {"graisse", 1, "Roh"},
        }
    },    
    [GetHashKey("a_c_goosecanada_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_hawk_01")] =   {
        randomized = false,
        items = {
            {"bec", 1, "Maso"},
            {"plume", 5, "Pírko"},
			{"serre", 2, "Dráp"},
        }
    },    
    [GetHashKey("a_c_heron_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_iguana_01")] =   {
        randomized = false,
        items = {
            {"peauvisqueuse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_iguanadesert_01")] =   {
        randomized = false,
        items = {
            {"peauvisqueuse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_javelina_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 2, "Kvalitní maso"},
            {"graisse", 3, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_loon_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_moose_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 2, "Kvalitní maso"},
			{"boiscerf", 2, "Velké Paroží"},
			{"graisse", 3, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("a_c_muskrat_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"petitefourure", 1, "Velká Kůže"},
        }
    },    
    [GetHashKey("a_c_oriole_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_owl_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_ox_01")] =   {
        randomized = false,
        items = {
            {"viande", 2, "Kvalitní maso"},
			{"corne", 2, "Roh"},
            {"graisse", 3, "Roh"},
        }
    },    
    [GetHashKey("a_c_panther_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"griffe", 4, "Dráp"},
        }
    },    
    [GetHashKey("a_c_parrot_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_pelican_01")] =   {
        randomized = false,
        items = {
            {"plume", 4, "Pírko"},
            {"bec", 1, "Pírko"},
        }
    },    
    [GetHashKey("a_c_pheasant_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 4, "Pírko"},
            {"serre", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_pig_01")] =   {
        randomized = false,
        items = {
            {"viande", 1, "Kvalitní maso"},
            {"graisse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_pigeon")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_possum_01")] =   {
        randomized = false,
        items = {
            {"petitefourure", 1, "Velká Kůže"},
        }
    },    
    [GetHashKey("vouturetahlesanciens")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 4, "Pírko"},
        }
    },    
    [GetHashKey("a_c_pronghorn_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"boiscerf", 2, "Malé Paroží"},
            {"graisse", 2, "Malé Paroží"},
        }
    },    
    [GetHashKey("a_c_quail_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_rabbit_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
        }
    },    
    [GetHashKey("a_c_raccoon_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
			{"dentrongeur", 1, "Zvířecí Zub"},
			
        }
    },    
    [GetHashKey("a_c_rat_01")] =   {
        randomized = false,
        items = {
            {"dentrongeur", 1, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("a_c_raven_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_redfootedbooby_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_robin_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_rooster_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_roseatespoonbill_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_seagull_01")] =   {
        randomized = false,
        items = {
            {"plume", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_sheep_01")] =   {
        randomized = false,
        items = {
            {"viande", 1, "Kvalitní maso"},
            {"graisse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_skunk_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"glandepuante", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_snake_01")] =   {
        randomized = false,
        items = {
            {"peauserpent", 1, "Malá Kůže"},
            {"glandevenin", 1, "Hadí jed"},
        }
    },    
    [GetHashKey("a_c_snakeblacktailrattle_01")] =   {
        randomized = false,
        items = {
            {"peauserpent", 1, "Malá Kůže"},
            {"glandevenin", 1, "Hadí jed"},
        }
    },    
    [GetHashKey("a_c_snakeferdelance_01")] =   {
        randomized = false,
        items = {
            {"peauserpent", 1, "Malá Kůže"},
            {"glandevenin", 1, "Hadí jed"},
        }
    },    
    [GetHashKey("a_c_snakewater_01")] =  {
        randomized = false,
        items = {
            {"peauserpent", 1, "Malá Kůže"},
            {"glandevenin", 1, "Hadí jed"},
        }
    },    
    [GetHashKey("a_c_songbird_01")] =   {
            randomized = false,
            items = {
                {"plume", 3, "Pírko"},
        },
    },    
    [GetHashKey("a_c_sparrow_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },
    [GetHashKey("a_c_squirrel_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Maso"},
            {"queueecureuil", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_toad_01")] =   {
        randomized = false,
        items = {
            {"peauvisqueuse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_turkey_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_turkeywild_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_turtlesnapping_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Maso"},
            {"carapace", 1, "Malá Kůže"},
            {"graisse", 1, "Malá Kůže"},
            
        }
    },    
    [GetHashKey("a_c_vulture_01")] =   {
        randomized = false,
        items = {
            {"volaile", 1, "Maso"},
            {"plume", 3, "Pírko"},
            {"serre", 2, "Pírko"},
        }
    },    
    [GetHashKey("a_c_wolf")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"croc", 2, "Zvířecí Zub"},
            {"graisse", 2, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_wolf_medium")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"croc", 2, "Zvířecí Zub"},
            {"graisse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_wolf_small")] =   {
        randomized = false,
        items = {
        {"viandegibier", 1, "Kvalitní maso"},
        {"croc", 2, "Zvířecí Zub"},
        {"graisse", 1, "Malá Kůže"},
        }
    },    
    [GetHashKey("a_c_woodpecker_01")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("a_c_woodpecker_02")] =   {
        randomized = false,
        items = {
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("mp_a_c_alligator_01")] =   {
        randomized = false,
        items = {
            {"viandereptile", 3, "Kvalitní maso"},
			{"crocdecroco", 2, "Zvířecí Zub"},
            {"graisse", 2, "Zvířecí Zub"},
        }
    },    
    [GetHashKey("mp_a_c_beaver_01")] =   {
        randomized = false,
        items = {
            {"viandepetitmamifere", 1, "Kvalitní maso"},
            {"queuedecastor", 1, "Malá Kůže"},
            {"dentrongeur", 1, "Malá Kůže"},
            {"graisse", 1, "Roh"},
        }
    },    
    [GetHashKey("mp_a_c_bighornram_01")] =   {
        randomized = false,
        items = {
            {"viande", 1, "Maso"},
			{"corne", 1, "Roh"},
            {"graisse", 1, "Roh"},
        }
    },    
    [GetHashKey("mp_a_c_boar_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 3, "Kvalitní maso"},
			{"graisse", 3, "Zvířecí Lůj"},
            {"defense", 2, "Zvířecí Lůj"},
        }
    },    
    [GetHashKey("mp_a_c_buck_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"boiscerf", 1, "Malé Paroží"}, 
            {"graisse", 2, "Malé Paroží"}, 
        }
    },    
    [GetHashKey("mp_a_c_chicken_01")] =   {
        randomized = false,
        items = {
            {"viandevolaille", 1, "Maso"},
            {"plume", 3, "Pírko"},
        }
    },    
    [GetHashKey("mp_a_c_cougar_01")] =   {
        randomized = false,
        items = {
            {"viandegibier", 1, "Kvalitní maso"},
			{"griffe", 2, "Dráp"},
        }
    },    
}