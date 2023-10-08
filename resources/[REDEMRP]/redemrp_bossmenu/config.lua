Config = {}

Config.Jobs = {
    ["police"] = {
        Name = "New Hanover Sheriff's Office",
        HasDuty = true,
        HasLockers = true,
        MenuLocations = {
            vector3(-278.3807, 805.3717, 119.43005), -- Valentine - NH
            vector3(2904.144, 1309.9204, 44.937969), -- Annesburg - NH
        },
        Grades = {
            [1] = {
                Name = "Assistant Deputy",
                Pay = 3.50,
            },
            [2] = {
                Name = "Deputy",
                Pay = 4.75,
                StorageAccess = true,
            },
            [3] = {
                Name = "Senior Deputy",
                Pay = 5.25,
                StorageAccess = true,
            },
            [4] = {
                Name = "Corporal",
                Pay = 6.75,
                StorageAccess = true,
            },
            [5] = {
                Name = "Sergeant",
                Pay = 7.75,
                StorageAccess = true,
            },
            [6] = {
                Name = "Lieutenant",
                Pay = 8,
                Personnel = true,
                Ledger = true,
                StorageAccess = true,
            },
            [7] = {
                Name = "Captain",
                Pay = 8.75,
                Personnel = true,
                Ledger = true,
                StorageAccess = true,
            },
            [8] = {
                Name = "Undersheriff",
                Pay = 9,
                Personnel = true,
                Ledger = true,
                StorageAccess = true,
            },
            [9] = {
                Name = "Sheriff",
                Pay = 9.50,
                Personnel = true,
                Ledger = true,
                StorageAccess = true,
            },
        }
    },
    ["armurier_rhodes"] = {
        Name = "Armurerie de Rhodes",
        MenuLocations = {
            vector3(1328.648, -1325.286, 77.94454)
        },
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
        Name = "Armurerie de Strawberry",
        MenuLocations = {
            vector3(-1843.087, -413.7095, 162.3547)
        },
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
        Name = "Écurie de Blackwater",
        MenuLocations = {
            vector4(-878.4421, -1361.514, 43.57775)
        },
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
        Name = "Écurie de Saint-Denis",
        MenuLocations = {
            vector3(2513.883, -1459.578, 46.36203)
        },
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
        Name = "Usine",
        MenuLocations = {
            vector3(2324.79, -1456.619, 46.00994)
        },
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
        Name = "Usine",
        MenuLocations = {
            vector3(2957.164, 1377.683, 56.3044)
        },
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
        Name = "Usine",
        MenuLocations = {
            vector3(-1643.433, -1355.236, 84.45272)
        },
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


}