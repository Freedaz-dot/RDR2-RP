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
        Name = "Armurerie de Strawberry",
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
        Name = "À la Bonne Pièce",
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
        Name = "Saloon Le Turbin",
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
    ["apothicaire"] = {
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
        Name = "Bijouterie",
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
        Name = "Scarlett Distillery",
        blisprite = 553094466,
        MenuLocations = 
            vector3(1453.521, -1582.51, 72.01605)
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
        Name = "Convoyeur",
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
        Name = "Convoyeur",
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


}

Config.DistanceToInteract = 2.0

Config.ExportPoint = {
    vector3(-783.3221, -1234.487, 42.54176), -- bla
    vector3(2671.887, -1508.395, 44.96954) -- st denis 


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
    ["lingotfer"] = {label= "Lingot de fer", price = 1.1},
    ["lingotor"] = {label= "Lingot d'or", price = 50},
    ["farine"] = {label= "Farine", price = 0.2},
    ["bouteillelait"] = {label= "Bouteille de lait", price = 0.1},
    ["patate"] = {label= "Patate", price = 0.1},
    ["Corn"] = {label= "Maïs", price = 0.1},
    ["viandebovine"] = {label= "Viande Bovine", price = 0.3},
    ["gunpowder"] = {label= "Poudre à canon", price = 0.08}, 
    ["douille"] = {label= "Douilles", price = 0.16},
    ["ferpepite"] = {label= "Pépite de fer", price = 0.06},
    ["charbon"] = {label= "Charbon", price = 0.03},
    ["cuivrepepite"] = {label= "Pépite de cuivre", price = 0.04},
    ["plombpepite"] = {label= "Pépite de plomb", price = 0.04},
    ["zincpepite"] = {label= "Pépite de zinc", price = 0.1},
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