Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-33.11, -1098.35, 27.27)-- Where the finance menu is located
Config.PaymentWarning = 25 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 48 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = false -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['gabzpdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(-57.558795928955, -1068.3577880859),
            vector2(-72.213272094727, -1108.9879150391),
            vector2(-39.154594421387, -1119.8070068359),
            vector2(-29.933103561401, -1118.8210449219),
            vector2(-20.60080909729, -1117.9290771484),
            vector2(-8.9895477294922, -1085.5925292969)
            },
            ['minZ'] = 22.0, -- min height of the shop zone
            ['maxZ'] = 30.0, -- max height of the shop zone
            ['size'] = 3.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['sportsclassics'] = 'Sports Classics',
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['offroad'] = 'Offroad',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles',
            ['custom'] = 'Custom Vehicles'
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-42.33, -1101.56, 26.3, 22.88), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-37.13, -1093.07, 26.3, 199.32),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-47.64, -1092.1, 26.3, 287.58),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2'
            },
            [4] = {
                coords = vector4(-54.75, -1096.85, 26.3, 21.51),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-49.62, -1083.8, 26.3, 67.74),
                defaultVehicle = 't20',
                chosenVehicle = 't20'
            },
        },
    },
    ['island'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
            vector2(4493.0625, -4541.0434570312),
            vector2(4499.9443359375, -4560.7700195312),
            vector2(4511.490234375, -4556.5771484375),
            vector2(4504.802734375, -4536.5141601562)
            },
            ['minZ'] = 1.0, -- min height of the shop zone
            ['maxZ'] = 7.0, -- max height of the shop zone
            ['size'] = 3.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Cairo Perico', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['islands'] = 'Cairo Perico',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(4501.58, -4547.34, 4.03), -- Blip Location
        ['ReturnLocation'] = vector3(4503.15, -4541.9, 4.04), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(4502.07, -4537.15, 4.13, 305.69), -- Spawn location when vehicle is bought
        -- ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(4500.94, -4545.97, 3.03, 23.55), -- where the vehicle will spawn on display
                defaultVehicle = 'winky', -- Default display vehicle
                chosenVehicle = 'winky', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    -- ['luxury'] = {
    --     ['Type'] = 'managed',  -- meaning a real player has to sell the car
    --     ['Zone'] = {
    --         ['Shape'] = {
    --             vector2(-1260.6973876953, -349.21334838867),
    --             vector2(-1268.6248779297, -352.87365722656),
    --             vector2(-1274.1533203125, -358.29794311523),
    --             vector2(-1273.8425292969, -362.73715209961),
    --             vector2(-1270.5701904297, -368.6716003418),
    --             vector2(-1266.0561523438, -375.14080810547),
    --             vector2(-1244.3684082031, -362.70278930664),
    --             vector2(-1249.8704833984, -352.03326416016),
    --             vector2(-1252.9503173828, -345.85726928711)
    --         },
    --         ['minZ'] = 36.646457672119,
    --         ['maxZ'] = 37.516143798828,
    --         ['size'] = 2.75, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'cardealer', -- Name of job or none
    --     ['ShopLabel'] = 'Luxury Vehicle Shop',
    --     ['showBlip'] = true,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = {
    --         ['super'] = 'Super',
    --         ['sports'] = 'Sports',
    --         ['imports'] = 'Imports'
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5,
    --     ['Location'] = vector3(-1255.6, -361.16, 36.91),
    --     ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
    --     ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-1265.31, -354.44, 35.91, 205.08),
    --             defaultVehicle = 'italirsx',
    --             chosenVehicle = 'italirsx',
    --         },
    --         [2] = {
    --             coords = vector4(-1270.06, -358.55, 35.91, 247.08),
    --             defaultVehicle = 'italigtb',
    --             chosenVehicle = 'italigtb',
    --         },
    --         [3] = {
    --             coords = vector4(-1269.21, -365.03, 35.91, 297.12),
    --             defaultVehicle = 'nero',
    --             chosenVehicle = 'nero',
    --         },
    --         [4] = {
    --             coords = vector4(-1252.07, -364.2, 35.91, 56.44),
    --             defaultVehicle = 'bati',
    --             chosenVehicle = 'bati',
    --         },
    --         [5] = {
    --             coords = vector4(-1255.49, -365.91, 35.91, 55.63),
    --             defaultVehicle = 'carbonrs',
    --             chosenVehicle = 'carbonrs',
    --         },
    --         [6] = {
    --             coords = vector4(-1249.21, -362.97, 35.91, 53.24),
    --             defaultVehicle = 'hexer',
    --             chosenVehicle = 'hexer',
    --         },
    --     }
    -- },
    -- ['luxuryautos'] = {
    --     ['Type'] = 'managed',  -- meaning a real player has to sell the car
    --     ['Zone'] = {
    --         ['Shape'] = {
    --             vector2(-788.36016845703, -249.63743591309),
    --             vector2(-772.89184570313, -243.73014831543),
    --             vector2(-760.07312011719, -238.43655395508),
    --             vector2(-783.64318847656, -198.9468536377),
    --             vector2(-790.96185302734, -203.83338928223),
    --             vector2(-800.06072998047, -188.17231750488),
    --             vector2(-815.92437744141, -197.20959472656),
    --             vector2(-816.45330810547, -196.55017089844),
    --             vector2(-818.30737304688, -197.78021240234)
    --         },
    --         ['minZ'] = 37.0383644104,
    --         ['maxZ'] = 37.511798858643,
    --         ['size'] = 2.75, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'cardealer', -- Name of job or none
    --     ['ShopLabel'] = 'Luxury Autos',
    --     ['showBlip'] = true,  -- true or false
    --     ['blipSprite'] = 596,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = {
    --         ['super'] = 'Super',
    --         ['sports'] = 'Sports',
    --         ['imports'] = 'Imports',
    --         ['oneofone'] = '1 Of 1',
    --         ['moviecars'] = 'Movie Cars',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5,
    --     ['Location'] = vector3(-799.33, -221.63, 37.08),
    --     ['ReturnLocation'] = vector3(-768.52, -231.68, 37.08),
    --     ['VehicleSpawn'] = vector4(-773.7, -233.67, 37.08, 205.88),
    --     ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-783.43, -223.39, 36.32, 131.13), -- where the vehicle will spawn on display
    --             defaultVehicle = 'dtdbolide', -- Default display vehicle
    --             chosenVehicle = 'dtdbolide', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(-789.67, -240.15, 36.08, 171.37),
    --             defaultVehicle = 'hondacivictr',
    --             chosenVehicle = 'hondacivictr',
    --         },
    --         [3] = {
    --             coords = vector4(-792.49, -235.38, 36.08, 178.0),
    --             defaultVehicle = 'wrx15',
    --             chosenVehicle = 'wrx15',
    --         },
    --         [4] = {
    --             coords = vector4(-786.84, -244.61, 36.08, 163.44),
    --             defaultVehicle = 'r32',
    --             chosenVehicle = 'r32',
    --         },
    --         [5] = {
    --             coords = vector4(-795.71, -230.26, 36.08, 212.41),
    --             defaultVehicle = 'a80',
    --             chosenVehicle = 'a80',
    --         },
    --     }
    -- },
    ['lsmotors'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(114.72692871094, -1113.3160400391),
                vector2(114.76803588867, -1116.9927978516),
                vector2(147.92083740234, -1117.4232177734),
                vector2(147.70713806152, -1121.951171875),
                vector2(178.70559692383, -1122.2172851562),
                vector2(188.60453796387, -1118.6016845703),
                vector2(195.17059326172, -1105.7963867188),
                vector2(195.66481018066, -1086.9372558594),
                vector2(173.28337097168, -1084.5700683594),
                vector2(115.25202178955, -1084.7478027344)
            },
            ['minZ'] = 20.0,
            ['maxZ'] = 32.0,
            ['size'] = 3.75
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 596, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['ShopLabel'] = 'LS Motors',
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['imports'] = 'Imports',
            ['oneofone'] = '1 Of 1',
            ['moviecars'] = 'Movie Cars',
            ['bikes'] = 'Motorcycles',
        },
        -- ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(162.22, -1103.83, 29.21),
        ['ReturnLocation'] = vector3(135.52, -1101.24, 29.26),
        ['VehicleSpawn'] = vector4(120.54, -1098.73, 29.2, 178.26),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(152.45, -1091.75, 28.36, 239.56),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx',
            },
            [2] = {
                coords = vector4(150.75, -1100.02, 28.37, 269.46),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb',
            },
            [3] = {
                coords = vector4(153.29, -1108.15, 28.36, 303.14),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero',
            },
            [4] = {
                coords = vector4(155.64, -1113.72, 28.32, 273.59),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2',
            },
            [5] = {
                coords = vector4(168.88, -1113.97, 28.32, 89.09),
                defaultVehicle = 't20',
                chosenVehicle = 't20',
            },
            [6] = {
                coords = vector4(170.49, -1107.85, 28.36, 66.46),
                defaultVehicle = 'osiris',
                chosenVehicle = 'osiris',
            },
            [7] = {
                coords = vector4(172.4, -1100.13, 28.37, 86.83),
                defaultVehicle = 'penetrator',
                chosenVehicle = 'penetrator',
            },
            [8] = {
                coords = vector4(180.63, -1106.97, 28.4, 241.58),
                defaultVehicle = 'pfister811',
                chosenVehicle = 'pfister811',
            },
            [9] = {
                coords = vector4(180.65, -1102.58, 28.4, 246.31),
                defaultVehicle = 'prototipo',
                chosenVehicle = 'prototipo',
            },
            [10] = {
                coords = vector4(180.72, -1098.66, 28.4, 239.54),
                defaultVehicle = 'reaper',
                chosenVehicle = 'reaper',
            },
            [11] = {
                coords = vector4(181.01, -1094.64, 28.4, 248.29),
                defaultVehicle = 'sc1',
                chosenVehicle = 'sc1',
            },
            [12] = {
                coords = vector4(174.45, -1092.42, 28.34, 155.68),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs',
            },
            [13] = {
                coords = vector4(172.48, -1092.47, 28.33, 157.57),
                defaultVehicle = 'bf400',
                chosenVehicle = 'bf400',
            },
            [14] = {
                coords = vector4(170.45, -1092.56, 28.33, 155.7),
                defaultVehicle = 'bati2',
                chosenVehicle = 'bati2',
            },
            [15] = {
                coords = vector4(168.62, -1092.43, 28.34, 149.62),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati',
            },
            [16] = {
                coords = vector4(166.68, -1092.34, 28.34, 155.66),
                defaultVehicle = 'akuma',
                chosenVehicle = 'akuma',
            },
            [17] = {
                coords = vector4(156.34, -1105.25, 22.55, 1.82),
                defaultVehicle = 'tigon',
                chosenVehicle = 'tigon',
            },
            [18] = {
                coords = vector4(152.19, -1104.96, 22.54, 2.03),
                defaultVehicle = 'turismor',
                chosenVehicle = 'turismor',
            },
            [19] = {
                coords = vector4(148.15, -1104.66, 22.54, 358.89),
                defaultVehicle = 'tyrant',
                chosenVehicle = 'tyrant',
            },
            [20] = {
                coords = vector4(144.06, -1104.66, 22.54, 358.94),
                defaultVehicle = 'tyrus',
                chosenVehicle = 'tyrus',
            },
            [21] = {
                coords = vector4(139.89, -1104.96, 22.54, 0.09),
                defaultVehicle = 'vacca',
                chosenVehicle = 'vacca',
            },
            [22] = {
                coords = vector4(135.9, -1104.95, 22.54, 2.62),
                defaultVehicle = 'vagner',
                chosenVehicle = 'vagner',
            },
            [23] = {
                coords = vector4(135.85, -1091.64, 22.55, 183.12),
                defaultVehicle = 'visione',
                chosenVehicle = 'visione',
            },
            [24] = {
                coords = vector4(140.1, -1091.9, 22.54, 179.45),
                defaultVehicle = 'voltic',
                chosenVehicle = 'voltic',
            },
            [25] = {
                coords = vector4(144.1, -1091.76, 22.55, 184.67),
                defaultVehicle = 'zorrusso',
                chosenVehicle = 'zorrusso',
            },
            [26] = {
                coords = vector4(148.24, -1091.71, 22.55, 180.47),
                defaultVehicle = 'xa21',
                chosenVehicle = 'xa21',
            },
            [27] = {
                coords = vector4(152.18, -1091.81, 22.54, 182.82),
                defaultVehicle = 'zentorno',
                chosenVehicle = 'zentorno',
            },
        },
    },
    -- ['ottos'] = {
    --     ['Type'] = 'managed',  -- meaning a real player has to sell the car
    --     ['Zone'] = {
    --         ['Shape'] = {
    --             vector2(793.66473388672, -833.41107177734),
    --             vector2(817.26861572266, -833.62554931641),
    --             vector2(817.19519042969, -795.419921875),
    --             vector2(793.76245117188, -795.46026611328),
    --             vector2(788.22900390625, -795.50628662109),
    --             vector2(788.12689208984, -833.18182373047)
    --         },
    --         ['minZ'] = 22.0,
    --         ['maxZ'] = 29.0,
    --         ['size'] = 3.25
    --     },
    --     ['Job'] = 'ottos', -- Name of job or none
    --     ['showBlip'] = true, -- true or false
    --     ['blipSprite'] = 226, -- Blip sprite
    --     ['blipColor'] = 3, -- Blip color
    --     ['ShopLabel'] = 'Ottos Dealership',
    --     ['Categories'] = {
    --         ['motorcycles'] = 'Motorcycles',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5,
    --     ['Location'] = vector3(801.11, -823.67, 26.34),
    --     ['ReturnLocation'] = vector3(796.63, -818.23, 26.18),
    --     ['VehicleSpawn'] = vector4(802.61, -820.4, 26.18, 273.6),
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(797.14, -815.08, 25.18, 268.51),
    --             defaultVehicle = 'zombieb',
    --             chosenVehicle = 'zombieb',
    --         },
    --         [2] = {
    --             coords = vector4(797.0, -811.77, 25.18, 268.55),
    --             defaultVehicle = 'wolfsbane',
    --             chosenVehicle = 'wolfsbane',
    --         },
    --         [3] = {
    --             coords = vector4(796.8, -808.76, 25.25, 269.7),
    --             defaultVehicle = 'vader',
    --             chosenVehicle = 'vader',
    --         },
    --         [4] = {
    --             coords = vector4(796.82, -805.37, 25.27, 272.24),
    --             defaultVehicle = 'thrust',
    --             chosenVehicle = 'thrust',
    --         },
    --         [5] = {
    --             coords = vector4(808.95, -805.45, 25.23, 89.99),
    --             defaultVehicle = 'sovereign',
    --             chosenVehicle = 'sovereign',
    --         },
    --         [6] = {
    --             coords = vector4(809.0, -808.7, 25.22, 93.7),
    --             defaultVehicle = 'sanchez2',
    --             chosenVehicle = 'sanchez2',
    --         },
    --         [7] = {
    --             coords = vector4(808.72, -812.01, 25.18, 93.22),
    --             defaultVehicle = 'sanctus',
    --             chosenVehicle = 'sanctus',
    --         },
    --         [8] = {
    --             coords = vector4(808.75, -814.89, 25.19, 93.72),
    --             defaultVehicle = 'ruffian',
    --             chosenVehicle = 'ruffian',
    --         },
    --     },
    -- },
    ['sanders'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(307.49411010742, -1146.7236328125),
                vector2(267.31015014648, -1146.6380615234),
                vector2(267.10397338867, -1172.3439941406),
                vector2(307.55267333984, -1168.2810058594)
            },
            ['minZ'] = 26.0,
            ['maxZ'] = 32.0,
            ['size'] = 2.25
        },
        ['Job'] = 'sanders', -- Name of job or none
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 226, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['ShopLabel'] = 'Sanders Dealership',
        ['Categories'] = {
            ['motorcycles'] = 'Motorcycles',
        },
        -- ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(289.4, -1158.51, 29.47),
        ['ReturnLocation'] = vector3(268.11, -1164.33, 29.18),
        ['VehicleSpawn'] = vector4(274.07, -1159.46, 29.27, 105.58),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(270.56, -1151.31, 28.59, 0.57),
                defaultVehicle = 'zombieb',
                chosenVehicle = 'zombieb',
            },
            [2] = {
                coords = vector4(274.24, -1150.47, 28.59, 69.32),
                defaultVehicle = 'wolfsbane',
                chosenVehicle = 'wolfsbane',
            },
            [3] = {
                coords = vector4(278.58, -1150.34, 28.59, 73.37),
                defaultVehicle = 'vader',
                chosenVehicle = 'vader',
            },
            [4] = {
                coords = vector4(283.11, -1150.4, 28.59, 71.37),
                defaultVehicle = 'thrust',
                chosenVehicle = 'thrust',
            },
            [5] = {
                coords = vector4(290.97, -1150.52, 28.59, 298.21),
                defaultVehicle = 'sovereign',
                chosenVehicle = 'sovereign',
            },
            [6] = {
                coords = vector4(295.07, -1150.46, 28.59, 292.12),
                defaultVehicle = 'sanchez2',
                chosenVehicle = 'sanchez2',
            },
            [7] = {
                coords = vector4(298.5, -1150.51, 28.59, 295.08),
                defaultVehicle = 'sanctus',
                chosenVehicle = 'sanctus',
            },
            [8] = {
                coords = vector4(301.8, -1150.46, 28.59, 295.24),
                defaultVehicle = 'ruffian',
                chosenVehicle = 'ruffian',
            },
            [9] = {
                coords = vector4(303.33, -1151.65, 28.59, 338.67),
                defaultVehicle = 'bagger',
                chosenVehicle = 'bagger',
            },
            [10] = {
                coords = vector4(303.26, -1155.39, 28.59, 344.47),
                defaultVehicle = 'avarus',
                chosenVehicle = 'avarus',
            },
            [11] = {
                coords = vector4(303.29, -1158.85, 28.59, 344.54),
                defaultVehicle = 'double',
                chosenVehicle = 'double',
            },
            [12] = {
                coords = vector4(297.57, -1160.48, 29.29, 235.08),
                defaultVehicle = 'slingshot',
                chosenVehicle = 'slingshot',
            },
        },
    },
    -- ['LSPDVS'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(423.09365844727, -973.00476074219),
    --             vector2(423.15286254883, -1000.2853393555),
    --             vector2(424.45986938477, -1000.2731933594),
    --             vector2(424.55288696289, -998.75708007812),
    --             vector2(426.42709350586, -998.54864501953),
    --             vector2(426.63784790039, -1000.2899780273),
    --             vector2(440.32766723633, -1000.2852783203),
    --             vector2(440.40969848633, -998.76806640625),
    --             vector2(442.25427246094, -998.58880615234),
    --             vector2(442.52581787109, -1000.2886962891),
    --             vector2(450.04904174805, -1000.325012207),
    --             vector2(449.75857543945, -972.98345947266),
    --             vector2(442.52444458008, -973.03637695312),
    --             vector2(442.36883544922, -974.56939697266),
    --             vector2(440.66879272461, -974.69232177734),
    --             vector2(440.33126831055, -973.03521728516),
    --             vector2(426.63757324219, -973.03912353516),
    --             vector2(426.5283203125, -974.58276367188),
    --             vector2(424.78085327148, -974.78442382812),
    --             vector2(424.44320678711, -973.03863525391)
    --         },
    --         ['minZ'] = 25.7,  -- min height of the shop zone
    --         ['maxZ'] = 31.0,  -- max height of the shop zone
    --         ['size'] = 3.75, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'police', -- Name of job or none
    --     ['ShopLabel'] = 'LSPD Vehicle Shop', -- Blip name
    --     ['showBlip'] = false,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['lspd'] = 'Los Santos Police Department',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(437.06, -993.06, 25.7), -- Blip Location
    --     ['ReturnLocation'] = vector3(437.43, -994.29, 25.7), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(431.24, -987.03, 25.7, 180.0), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(437.39, -988.92, 24.7, 90.34), -- where the vehicle will spawn on display
    --             defaultVehicle = 'code3cvpi', -- Default display vehicle
    --             chosenVehicle = 'code3cvpi', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --     },
    -- },
    -- ['PILLBOXVS'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(317.38739013672, -562.07629394531),
    --             vector2(311.25842285156, -578.89056396484),
    --             vector2(311.67098999023, -579.52728271484),
    --             vector2(311.58505249023, -580.00805664062),
    --             vector2(318.3215637207, -582.45941162109),
    --             vector2(316.68591308594, -587.97698974609),
    --             vector2(333.85189819336, -594.22119140625),
    --             vector2(335.71618652344, -589.68133544922),
    --             vector2(337.83508300781, -590.47406005859),
    --             vector2(341.99743652344, -578.96179199219),
    --             vector2(340.28457641602, -578.25170898438),
    --             vector2(343.95080566406, -567.32470703125),
    --             vector2(326.50817871094, -560.98291015625),
    --             vector2(326.28707885742, -561.27447509766),
    --             vector2(322.58203125, -559.62005615234)
    --         },
    --         ['minZ'] = 28.8,  -- min height of the shop zone
    --         ['maxZ'] = 34.0,  -- max height of the shop zone
    --         ['size'] = 3.25, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'ambulance', -- Name of job or none
    --     ['ShopLabel'] = 'Pillbox Vehicle Shop', -- Blip name
    --     ['showBlip'] = false,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['medical'] = 'Pillbox Hospital',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(328.86, -576.66, 28.8), -- Blip Location
    --     ['ReturnLocation'] = vector3(322.21, -566.11, 28.8), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(333.0, -575.86, 28.8, 340.91), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(327.4, -584.57, 27.8, 246.48), -- where the vehicle will spawn on display
    --             defaultVehicle = 'ambulance', -- Default display vehicle
    --             chosenVehicle = 'ambulance', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --     },
    -- },
    -- ['LSFDVS'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(-654.83294677734, -106.79637908936),
    --             vector2(-644.15814208984, -100.70204162598),
    --             vector2(-640.17602539062, -96.939895629883),
    --             vector2(-640.70764160156, -95.743156433105),
    --             vector2(-637.91882324219, -93.2255859375),
    --             vector2(-632.06658935547, -93.821189880371),
    --             vector2(-631.99371337891, -95.004486083984),
    --             vector2(-628.79742431641, -95.560668945312),
    --             vector2(-629.3125, -99.937408447266),
    --             vector2(-632.72399902344, -99.900733947754),
    --             vector2(-633.16351318359, -102.82009887695),
    --             vector2(-629.83630371094, -103.70213317871),
    --             vector2(-630.39135742188, -108.07421875),
    --             vector2(-633.40612792969, -107.72986602783),
    --             vector2(-634.1533203125, -110.72512054443),
    --             vector2(-630.83990478516, -111.62652587891),
    --             vector2(-631.39916992188, -115.99180603027),
    --             vector2(-634.39007568359, -115.619140625),
    --             vector2(-635.0546875, -119.07189178467),
    --             vector2(-638.59582519531, -118.96114349365),
    --             vector2(-639.04846191406, -121.37124633789),
    --             vector2(-644.34326171875, -124.97634887695)
    --         },
    --         ['minZ'] = 37.8,  -- min height of the shop zone
    --         ['maxZ'] = 42.0,  -- max height of the shop zone
    --         ['size'] = 3.25, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'ambulance', -- Name of job or none
    --     ['ShopLabel'] = 'LSFD Vehicle Shop', -- Blip name
    --     ['showBlip'] = false,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['medical'] = 'Los Santos Fire Department',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(-641.69, -109.55, 37.96), -- Blip Location
    --     ['ReturnLocation'] = vector3(-637.43, -98.78, 38.05), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(-645.06, -118.8, 37.88, 31.56), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-640.13, -112.7, 36.97, 82.36), -- where the vehicle will spawn on display
    --             defaultVehicle = 'fd13', -- Default display vehicle
    --             chosenVehicle = 'fd13', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --     },
    -- },
    -- ['gabzbcso'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(1870.3189697266, 3691.2690429688),
    --             vector2(1855.5126953125, 3716.7619628906),
    --             vector2(1806.5192871094, 3688.3515625),
    --             vector2(1808.751953125, 3683.7770996094),
    --             vector2(1803.3559570312, 3680.1166992188),
    --             vector2(1807.8302001953, 3672.3713378906),
    --             vector2(1806.3052978516, 3671.4150390625),
    --             vector2(1813.8004150391, 3658.7670898438)
    --         },
    --         ['minZ'] = 30.5,  -- min height of the shop zone
    --         ['maxZ'] = 37.0,  -- max height of the shop zone
    --         ['size'] = 3.25, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'police', -- Name of job or none
    --     ['ShopLabel'] = 'BCSO Vehicle Shop', -- Blip name
    --     ['showBlip'] = false,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['bcso'] = 'Blaine County Sheriffs Office',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(1878.27, 3699.09, 33.54), -- Blip Location
    --     ['ReturnLocation'] = vector3(1878.99, 3690.44, 33.54), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(1828.39, 3695.14, 33.97, 298.4), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(1831.5, 3689.33, 32.97, 31.44), -- where the vehicle will spawn on display
    --             defaultVehicle = 'valor18charg', -- Default display vehicle
    --             chosenVehicle = 'valor18charg', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --     },
    -- },
    -- ['SAHPVS'] = {
    --     ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
    --     ['Zone'] = {
    --         ['Shape'] = { --polygon that surrounds the shop
    --             vector2(1542.9769287109, 805.17077636719),
    --             vector2(1556.5367431641, 828.70648193359),
    --             vector2(1564.4844970703, 824.08850097656),
    --             vector2(1566.3449707031, 826.67803955078),
    --             vector2(1569.3311767578, 825.19262695312),
    --             vector2(1563.58984375, 814.29345703125),
    --             vector2(1554.2863769531, 799.18859863281)
    --         },
    --         ['minZ'] = 77.0,  -- min height of the shop zone
    --         ['maxZ'] = 81.0,  -- max height of the shop zone
    --         ['size'] = 3.25, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'police', -- Name of job or none
    --     ['ShopLabel'] = 'SASP Vehicle Shop', -- Blip name
    --     ['showBlip'] = false,  -- true or false
    --     ['blipSprite'] = 326,  -- Blip sprite
    --     ['blipColor'] = 3,  -- Blip color
    --     ['Categories'] = { -- Categories available to browse
    --         ['sahp'] = 'San Andreas State Police',
    --     },
    --     -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(1550.94, 813.11, 77.06), -- Blip Location
    --     ['ReturnLocation'] = vector3(1566.31, 823.08, 77.14), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(1557.63, 808.3, 77.1, 143.93), -- Spawn location when vehicle is bought
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(1559.6, 818.71, 76.14, 149.11), -- where the vehicle will spawn on display
    --             defaultVehicle = 'liberty18charg', -- Default display vehicle
    --             chosenVehicle = 'liberty18charg', -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --     },
    -- },-- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0, -- min height of the shop zone
            ['maxZ'] = 5.0, -- max height of the shop zone
            ['size'] = 6.2 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Marina Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 410, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['Categories'] = {-- Categories available to browse
            ['boats'] = 'Boats'
        },
        -- ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6), -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark', -- Default display vehicle
                chosenVehicle = 'seashark' -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
--     ['air'] = {
--         ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
--         ['Zone'] = {
--             ['Shape'] = {--polygon that surrounds the shop
--                 vector2(-1607.58, -3141.7),
--                 vector2(-1672.54, -3103.87),
--                 vector2(-1703.49, -3158.02),
--                 vector2(-1646.03, -3190.84)
--             },
--             ['minZ'] = 12.99, -- min height of the shop zone
--             ['maxZ'] = 16.99, -- max height of the shop zone
--             ['size'] = 7.0, -- size of the vehicles zones
--         },
--         ['Job'] = 'none', -- Name of job or none
--         ['ShopLabel'] = 'Air Shop', -- Blip name
--         ['showBlip'] = true, -- true or false
--         ['blipSprite'] = 251, -- Blip sprite
--         ['blipColor'] = 3, -- Blip color
--         ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
--         ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
--         ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
--         ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
--         ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
--         ['ShowroomVehicles'] = {
--             [1] = {
--                 coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
--                 defaultVehicle = 'volatus', -- Default display vehicle
--                 chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
--             },
--             [2] = {
--                 coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
--                 defaultVehicle = 'luxor2',
--                 chosenVehicle = 'luxor2'
--             },
--             [3] = {
--                 coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
--                 defaultVehicle = 'nimbus',
--                 chosenVehicle = 'nimbus'
--             },
--             [4] = {
--                 coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
--                 defaultVehicle = 'frogger',
--                 chosenVehicle = 'frogger'
--             },
--         },
--     },
-- }
