Config = {}


Config.alertBlipSprite = 1001245999	
Config.blipRadius = 40.0
Config.radiusStyle = -666422021
Config.alertTimeout = 30

Config.AlerteVente = {
    "sheriff_rhodes", "sheriff_bla",
}

Config.ZoneVente = {
    [GetHashKey("StDenis")] = "sheriff_rhodes",
    [GetHashKey("Rhodes")] = "sheriff_rhodes",
    [GetHashKey("Strawberry")] = "sheriff_bla",
    [GetHashKey("Blackwater")] = "sheriff_bla",
}

Config.Jobs = {
    ["peche_lagras"] = {
        bigjob = "peche",
        Name = "Pêcherie",
        blisprite = -852241114,
        MenuLocations = 
            vector3(2138.28, -639.9623, 41.64072)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["armurier_rhodes"] = {
        bigjob = "armurier",
        Name = "Armurerie de Rhodes",
        blisprite = -145868367,
        MenuLocations = 
            vector3(1328.648, -1325.286, 76.94454)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["armurier_strawberry"] = {
        bigjob = "armurier",
        Name = "Dindynamite",
        blisprite = -145868367,
        MenuLocations = 
            vector3(-1839.672, -415.6006, 162.2888)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["marechal_bla"] = {
        bigjob = "marechal",
        Name = "Écurie de Blackwater",
        blisprite = -1327110633,
        MenuLocations = 
            vector3(-878.4421, -1361.514, 42.57775)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["marechal_stdenis"] = {
        bigjob = "marechal",
        Name = "Écurie de Saint-Denis",
        blisprite = -1327110633,
        MenuLocations = 
            vector3(2513.883, -1459.578, 45.36203)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["usine"] = {
        bigjob = "usine",
        Name = "Callaghan Industry",
        blisprite = 1576459965,
        MenuLocations = 
            vector3(2324.79, -1456.619, 45.00994)
    ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["mineur"] = {
        bigjob = "mineur",
        Name = "Jameson and Co.",
        blisprite = 1220803671,
        MenuLocations = 
            vector3(2957.164, 1377.683, 55.3044)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["fermier"] = {
        bigjob = "fermier",
        Name = "Ranch McAllister",
        blisprite = 552659337,
        MenuLocations = 
            vector3(-1643.433, -1355.236, 83.45272)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["fermier_creek"] = {
        bigjob = "fermier",
        Name = "Ranch La Retraite",
        blisprite = 552659337,
        MenuLocations = 
            vector3(-2173.346, 715.4448, 121.6186)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["store_straw"] = {
        bigjob = "store",
        Name = "Union Store",
        blisprite = 1475879922,
        MenuLocations = 
            vector3(-1794.378, -386.6008, 160.3288)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["store_rhodes"] = {
        bigjob = "store",
        Name = "General Store",
        blisprite = 1475879922,
        MenuLocations = 
            vector3(1329.714, -1295.512, 76.02248)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["store_stdenis"] = {
        bigjob = "store",
        Name = "La bonne étoile",
        blisprite = 1475879922,
        MenuLocations = 
            vector3(2822.861, -1319.344, 45.85267)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["store_bla"] = {
        bigjob = "store",
        Name = "Higgins Black Lantern",
        blisprite = 1475879922,
        MenuLocations = 
            vector3(-778.5928, -1323.718, 42.88414)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["forge"] = {
        bigjob = "forge",
        Name = "McKinnon's Metalworks",
        blisprite = -758970771,
        MenuLocations = 
            vector3(-873.6105, -1286.807, 43.1016)
        ,
        Grades = {
            [1] = {
                Name = "Ouvrier",
                StorageAccess = true,
            },
            [2] = {
                Name = "Contremaître",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },

----- ----- ----- -----

    ["saloon_kala"] = {
        bigjob = "saloon",
        Name = "Saloon La Dernière Chance",
        blisprite = 1879260108,
        MenuLocations = 
        vector3(2950.342, 529.1586, 44.33422)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["saloon_bla"] = {
        bigjob = "saloon",
        Name = "La ruée vers l'Ouest",
        blisprite = 1879260108,
        MenuLocations = 
            vector3(-819.7753, -1318.112, 43.67878)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["saloon_rhodes"] = {
        bigjob = "saloon",
        Name = "Saloon",
        blisprite = 1879260108,
        MenuLocations = 
        vector3(1336.559, -1371.556, 79.48715)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["saloon_faubourg"] = {
        bigjob = "saloon",
        Name = "Saloon Le Trèfle",
        blisprite = 1879260108,
        MenuLocations = 
            vector3(2793.258, -1165.609, 46.93198)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["saloon_stdenis"] = {
        bigjob = "saloon",
        Name = "Saloon La Bastille",
        blisprite = 1879260108,
        MenuLocations = 
             vector3(2639.198, -1230.353, 52.38039)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["doctor_stdenis"] = {
        bigjob = "doctor",
        Name = "Cabinet de Saint-Denis",
        MenuLocations = 
            vector3(2733.16, -1230.244, 49.37041)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["doctor"] = {
        bigjob = "doctor",
        Name = "Cabinet de Saint-Denis",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ---- Treshawn Am Jaime
    ["doctor_TA"] = {
        bigjob = "doctor",
        Name = "Cabinet de TA",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ---- A RENAME doctor_123 ...
    ["doctor_NC"] = {
        bigjob = "doctor",
        Name = "Cabinet de NC",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
        ---- A RENAME doctor_123 ...
    ["doctor_DM"] = {
        bigjob = "doctor",
        Name = "Cabinet de DM",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
        ---- A RENAME doctor_123 ...
    ["doctor_CG"] = {
        bigjob = "doctor",
        Name = "Cabinet de CG",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
        ---- Armand leclair
    ["doctor_AL"] = {
        bigjob = "doctor",
        Name = "Cabinet de AL",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
        ---- A RENAME doctor_123 ...
    ["doctor_CP"] = {
        bigjob = "doctor",
        Name = "Cabinet de CP",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ---- Gabriel VanBraum
    ["doctor_GB"] = {
        bigjob = "doctor",
        Name = "Cabinet de GB",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ----- Audrey Baker
    ["doctor_AB"] = {
        bigjob = "doctor",
        Name = "Cabinet de AB",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ------ daria blumenfeld
    ["doctor_DB"] = {
        bigjob = "doctor",
        Name = "Cabinet de DB",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
   ---- MALIWEN
    ["doctor_GE"] = {
        bigjob = "doctor",
        Name = "Cabinet de GE",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
      ---- A RENAME doctor_123 ...
    ["doctor_PB"] = {
        bigjob = "doctor",
        Name = "Cabinet de PB",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ------- Awenasa Redbird
    ["doctor_AR"] = {
        bigjob = "doctor",
        Name = "Cabinet de AR",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["doctor_bla"] = {
        bigjob = "doctor",
        Name = "Cabinet de Saint-Denis",
        MenuLocations = 
        vector3(-782.6881, -1306.694, 43.79616)
    ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["presse"] = {
        bigjob = "presse",
        Name = "Presse",
        blisprite = 587827268,
        MenuLocations = 
            vector3(2613.231, -1340.257, 49.13868)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["apothicaire_stdenis"] = {
        bigjob = "doctor",
        Name = "Apothicaire",
        blisprite = 669307703,
        MenuLocations = 
            vector3(2627.889, -1351.214, 48.04772)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["apothicaire_straw"] = {
        bigjob = "doctor",
        Name = "Apothicaire",
        blisprite = 669307703,
        MenuLocations = 
            vector3(-1807.722, -431.0266, 157.8314)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["sheriff_rhodes"] = {
        bigjob = "sheriff",
        Name = "Shériff",
        blisprite = -693644997,
        MenuLocations = 
            vector3(1361.258, -1306.085, 76.7606)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
                Pay = 0.75,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
                Pay = 0.75,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
                Pay = 0.75,
            },
        }
    },
    ["sheriff_bla"] = {
        bigjob = "sheriff",
        Name = "Shériff",
        blisprite = -693644997,
        MenuLocations = 
            vector3(-768.0265, -1266.601, 43.05392)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
                Pay = 0.75,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
                Pay = 0.75,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
                Pay = 0.75,
            },
        }
    },
    ["bijouterie"] = {
        bigjob = "bijouterie",
        Name = "Les Merveilles de Toscane",
        blisprite = -813538438,
        MenuLocations = 
            vector3(2586.072, -1011.997, 44.23995)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ["distillerie"] = {
        bigjob = "distillerie",
        Name = "Sutherland Distillery",
        blisprite = 553094466,
        MenuLocations = 
            vector3(1453.753, -1574.935, 71.02811)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },

    ["transport_ouest"] = {
        bigjob = "transport",
        Name = "WTS Transport",
        blisprite = -1747775003,
        MenuLocations = 
            vector3(-1816.753, -567.2182, 155.9842)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },

    ["transport_est"] = {
        bigjob = "transport",
        Name = "Nash Transport Company",
        blisprite = -1747775003,
        MenuLocations = 
            vector3(2657.076, -1553.609, 47.36165)
        ,
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },

    ---- relais de chasse

    ["chasse_est"] = {
        bigjob = "chasse",
        MenuLocations = vector3(3006.009, 564.6503, 43.45327),
        Name = "Relais de chasse Est",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    
    ["chasse_ouest"] = {
        bigjob = "chasse",
        MenuLocations = vector3(-1976.731, -1669.112, 117.1784),
        Name = "Relais de chasse Ouest",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    ---- relais d'herbo'

    ["herbo_est"] = {
        bigjob = "herbo",
        MenuLocations = vector3(1862.619, 584.5271, 112.9074),
        Name = "Relais de chasse Est",
        Grades = {
            [1] = {
                Name = "Assistant",
                StorageAccess = true,
            },
            [2] = {
                Name = "Second",
                StorageAccess = true,
            },
            [3] = {
                Name = "Patron",
                Personnel = true,
                StorageAccess = true,
            },
        }
    },
    
    -- ["herbo_ouest"] = {
    --     bigjob = "herbo",
    --     MenuLocations = vector3(-1976.731, -1669.112, 117.1784),
    --     Name = "Relais de chasse Ouest",
    --     Grades = {
    --         [1] = {
    --             Name = "Assistant",
    --             StorageAccess = true,
    --         },
    --         [2] = {
    --             Name = "Second",
    --             StorageAccess = true,
    --         },
    --         [3] = {
    --             Name = "Patron",
    --             Personnel = true,
    --             StorageAccess = true,
    --         },
    --     }
    -- },

}

Config.DistanceToInteract = 2.0

Config.ExportPoint = {
    ["blackwater"]= vector3(-783.3221, -1234.487, 42.54176), -- bla
    ["stdenis"]= vector3(2671.887, -1508.395, 44.96954) -- st denis 
}

Config.ImportNPC = {
    ["blackwater"] = {heading = 305.5272 , coords = vector3(-828.5374, -1243.587, 42.55648)},
    ["stdenis"] = {heading = 292.8161 , coords = vector3(2668.192, -1522.695, 44.96976)},
}

Config.ImportPoint = {
    [1]= vector3(2669.003, -1522.059, 45.96976), --- st denis
    [2]= vector3(-825.8802, -1241.919, 43.53639), -- bla
}

Config.ExportNPC = {
    ["blackwater"] = {heading = 216.50 , coords = vector3(-783.7773, -1233.145, 42.53811)},
    ["stdenis"] = {heading = 75.79538 , coords = vector3(2672.653, -1509.107, 44.96952)},
}


Config.Export = {
    ["blackwater"] = {
        ["gunpowder"] = {label= "Poudre à canon", price= 0.1}, 
        ["douille"] = {label= "Douilles", price= 0.18},
        ["ferpepite"] = {label= "Pépite de fer", price= 0.06},
        ["charbon"] = {label= "Charbon", price= 0.03},
        ["cuivrepepite"] = {label= "Pépite de cuivre", price= 0.04},
        ["plombpepite"] = {label= "Pépite de plomb", price= 0.04},
        ["zincpepite"] = {label= "Pépite de zinc", price= 0.1},
        ["good_whisky"] = {label= "Whisky", price= 0.33},
        ["dirty_whiskey"] = {label= "Mauvais Whisky", price= 0.18},
        ["gin"] = {label= "Gin", price= 0.38},
        ["caisseviande"] = {label= "Caisse de viande", price= 1},
        ["caissepoisson"] = {label= "Caisse de poisson", price= 1},
    },
    ["stdenis"] = {
        ["farine"] = {label= "Farine", price= 0.2},
        ["bouteillelait"] = {label= "Bouteille de lait", price= 0.1},
        ["patate"] = {label= "Patate", price= 0.1},
        ["Corn"] = {label= "Maïs", price= 0.1},
        ["viandebovine"] = {label= "Viande Bovine", price= 0.3},
        ["lingotfer"] = {label= "Lingot de fer", price = 1.1},
        ["lingotor"] = {label= "Lingot d'or", price = 41},
        ["WEAPON_LASSO"] = {label= "Lasso", price = 6.7},
        ["caisseviande"] = {label= "Caisse de viande", price= 1},
        ["caissepoisson"] = {label= "Caisse de poisson", price= 1},
    },
}


Config.ImportBijoux = {
    ["watch1"] = {label= "Montre de luxe", price = 35},
    ["watch2"] = {label= "Montre en or sombre", price = 25},
    ["watch3"] = {label= "Montre en argent", price = 15},
    ["watch4"] = {label= "Montre en argent 2", price = 20},
    ["watch5"] = {label= "Montre ancienne", price = 30},
    ["watch6"] = {label= "Montre en argent sombre", price = 20},
    ["watch7"] = {label= "Montre en or", price = 25},
    ["watch8"] = {label= "Montre en mauvais état", price = 5}, 
    ["watch9"] = {label= "Montre sans aiguilles", price = 2},
    ["fan"] = {label= "Éventail", price = 10},
}

Config.Bijoutier = {"bijouterie"}