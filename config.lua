Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42) -- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,  -- min height of the shop zone
            ['maxZ'] = 28.0,  -- max height of the shop zone
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles',
            ['custom'] = 'Custom Vehicles'
        },
        ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2',
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero',
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 't20',
                chosenVehicle = 't20',
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports'
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 35.91, 205.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 35.91, 247.08),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb',
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 35.91, 297.12),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero',
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 35.91, 56.44),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 35.91, 55.63),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs',
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 35.91, 53.24),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer',
            },
        }
    },
    ['LSPDVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(443.06268310546, -982.86450195312),
                vector2(442.65505981446, -973.68823242188),
                vector2(459.39010620118, -973.57452392578),
                vector2(460.11688232422, -982.53802490234),
            },
            ['minZ'] = 25.699808120728,
            ['maxZ'] = 25.699831008912,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'LSPD Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['lspd'] = 'Los Santos Police Department',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(450.88, -978.86, 25.7),
        ['ReturnLocation'] = vector3(425.98, -995.23, 25.7),
        ['VehicleSpawn'] = vector4(431.61, -984.82, 25.7, 183.52),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(450.11, -976.73, 24.7, 84.31),
                defaultVehicle = 'um2020camaro',
                chosenVehicle = 'um2020camaro',
            },
        }
    },
    ['BCSOVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(1868.8760986328, 3705.0612792968),
                vector2(1877.5600585938, 3709.9326171875),
                vector2(1887.3016357422, 3693.1638183594),
                vector2(1878.7427978516, 3687.8974609375),
            },
            ['minZ'] = 33.541904449462,
            ['maxZ'] = 33.54288482666,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'BCSO Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['bcso'] = 'Blaine County Sheriffs Office',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(1880.17, 3702.94, 33.54),
        ['ReturnLocation'] = vector3(1877.11, 3707.62, 33.55),
        ['VehicleSpawn'] = vector4(1875.83, 3700.3, 33.54, 121.83),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1880.17, 3702.94, 32.54, 39.89),
                defaultVehicle = 'SO2',
                chosenVehicle = 'SO2',
            },
        }
    },
    ['PBSOVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-450.19689941406, 5986.2309570312),
                vector2(-442.66326904296, 5993.7846679688),
                vector2(-463.23510742188, 6014.4497070312),
                vector2(-470.1838684082, 6006.7578125),
            },
            ['minZ'] = 31.324884414672,
            ['maxZ'] = 31.340501785278,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'PBSO Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['pbso'] = 'Paleto Bay Sheriffs Office',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-455.33, 6001.64, 31.34),
        ['ReturnLocation'] = vector3(-459.28, 6005.69, 31.34),
        ['VehicleSpawn'] = vector4(-463.78, 6002.39, 31.34, 48.37),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-455.33, 6001.64, 30.34, 88.53),
                defaultVehicle = 'LCSO1',
                chosenVehicle = 'LCSO1',
            },
        }
    },
    ['PILLBOXVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(342.0552368164, -578.87713623046),
                vector2(337.83093261718, -590.47259521484),
                vector2(335.87994384766, -589.62463378906),
                vector2(333.89947509766, -594.08978271484),
                vector2(327.39022827148, -591.12615966796),
                vector2(333.68927001954, -573.04467773438),
                vector2(341.00833129882, -575.41717529296),
                vector2(340.17971801758, -578.11553955078)
            },
            ['minZ'] = 28.79685974121,
            ['maxZ'] = 28.869243621826,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'ambulance', -- Name of job or none
        ['ShopLabel'] = 'Pillbox Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['medical'] = 'Medical Vehicles',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(337.02, -579.69, 28.8),
        ['ReturnLocation'] = vector3(320.63, -565.52, 28.8),
        ['VehicleSpawn'] = vector4(332.44, -577.7, 28.8, 343.82),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(337.02, -579.69, 27.8, 341.42),
                defaultVehicle = 'ambulance',
                chosenVehicle = 'ambulance',
            },
        }
    },
    ['SAHPVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(1556.537109375, 828.58276367188),
                vector2(1567.6203613282, 821.95513916016),
                vector2(1554.5686035156, 799.56872558594),
                vector2(1543.1805419922, 805.32916259766),
            },
            ['minZ'] = 77.012435913086,
            ['maxZ'] = 77.141464233398,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'SAHP Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['sahp'] = 'San Andreas Highway Patrol',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(1553.49, 812.64, 77.07),
        ['ReturnLocation'] = vector3(1564.11, 819.37, 77.14),
        ['VehicleSpawn'] = vector4(1554.97, 803.92, 77.04, 145.86),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1553.49, 812.64, 76.07, 195.83),
                defaultVehicle = 'HP4',
                chosenVehicle = 'HP4',
            },
        }
    },
    ['POLVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-436.14440917968, -2172.6596679688),
                vector2(-436.19833374024, -2183.9558105468),
                vector2(-448.36288452148, -2183.9201660156),
                vector2(-448.36581420898, -2172.7109375),
            },
            ['minZ'] = 10.318190574646,
            ['maxZ'] = 10.328219413758,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'Police Surplus Vehicle Shop',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 473,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['multi'] = 'Multiple Livery Vehicles',
            ['gang'] = 'Gang Units',
            ['training'] = 'Training Vehicles',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-442.58, -2176.03, 10.32),
        ['ReturnLocation'] = vector3(-430.49, -2166.1, 10.33),
        ['VehicleSpawn'] = vector4(-444.09, -2167.05, 10.32, 276.13),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-439.91, -2178.59, 9.32, 1.98),
                defaultVehicle = 'Recruit14',
                chosenVehicle = 'Recruit14',
            },
            [2] = {
                coords = vector4(-444.94, -2178.69, 9.32, 0.15),
                defaultVehicle = 'Trainer18',
                chosenVehicle = 'Trainer18',
            },
        }
    },
    ['LSFDVS'] = {
        ['Type'] = 'free-use',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-653.60388183594, -105.90691375732),
                vector2(-644.1273803711, -100.63941955566),
                vector2(-640.30963134766, -97.09075164795),
                vector2(-632.83666992188, -100.26864624024),
                vector2(-635.16131591796, -118.05383300782),
                vector2(-646.73529052734, -116.50816345214),
            },
            ['minZ'] = 37.875072479248,
            ['maxZ'] = 38.060489654542,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'ambulance', -- Name of job or none
        ['ShopLabel'] = 'LSFD Vehicle Shop',
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['medical'] = 'Los Santos Fire Department',
        },
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-637.36, -113.14, 37.01),
        ['ReturnLocation'] = vector3(-627.32, -114.27, 38.15),
        ['VehicleSpawn'] = vector4(-640.2, -112.83, 37.97, 79.9),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-637.36, -113.14, 37.01, 79.61),
                defaultVehicle = 'fd5',
                chosenVehicle = 'fd5',
            },
        }
    }, -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88),
            },
            ['minZ'] = 0.0,  -- min height of the shop zone
            ['maxZ'] = 5.0,  -- max height of the shop zone
            ['size'] = 6.2, -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 410,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['boats'] = 'Boats',
        },
        ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy',
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder',
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis',
            },
        },
    },
}

--     ['air'] = {
--         ['Type'] = 'free-use',  -- no player interaction is required to purchase a vehicle
--         ['Zone'] = {
--             ['Shape'] = { --polygon that surrounds the shop
--                 vector2(-1607.58, -3141.7),
--                 vector2(-1672.54, -3103.87),
--                 vector2(-1703.49, -3158.02),
--                 vector2(-1646.03, -3190.84),
--             },
--             ['minZ'] = 0.0,  -- min height of the shop zone
--             ['maxZ'] = 5.0,  -- max height of the shop zone
--             ['size'] = 7.0, -- size of the vehicles zones
--         },
--         ['Job'] = 'none', -- Name of job or none
--         ['ShopLabel'] = 'Air Shop', -- Blip name
--         ['showBlip'] = true,  -- true or false
--         ['blipSprite'] = 251,  -- Blip sprite
--         ['blipColor'] = 3,  -- Blip color
--         ['Categories'] = { -- Categories available to browse
--             ['helicopters'] = 'Helicopters',
--             ['planes'] = 'Planes',
--         },
--         ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
--         ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
--         ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
--         ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
--         ['ShowroomVehicles'] = {
--             [1] = {
--                 coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
--                 defaultVehicle = 'volatus', -- Default display vehicle
--                 chosenVehicle = 'volatus', -- Same as default but is dynamically changed when swapping vehicles
--             },
--             [2] = {
--                 coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
--                 defaultVehicle = 'luxor2',
--                 chosenVehicle = 'luxor2',
--             },
--             [3] = {
--                 coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
--                 defaultVehicle = 'nimbus',
--                 chosenVehicle = 'nimbus',
--             },
--             [4] = {
--                 coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
--                 defaultVehicle = 'frogger',
--                 chosenVehicle = 'frogger',
--             },
--         },
--     },
-- }
