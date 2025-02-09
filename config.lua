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
            ['minZ'] = 20.0, -- min height of the shop zone
            ['maxZ'] = 30.0, -- max height of the shop zone
            ['size'] = 3.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        -- ['Categories'] = {-- Categories available to browse
        --     ['sportsclassics'] = 'Sports Classics',
        --     ['sedans'] = 'Sedans',
        --     ['coupes'] = 'Coupes',
        --     ['suvs'] = 'SUVs',
        --     ['offroad'] = 'Offroad',
        --     ['muscle'] = 'Muscle',
        --     ['compacts'] = 'Compacts',
        --     ['vans'] = 'Vans',
        --     ['cycles'] = 'Bicycles',
        --     ['custom'] = 'Custom Vehicles'
        -- },
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
        -- ['Categories'] = {-- Categories available to browse
        --     ['islands'] = 'Cairo Perico',
        -- },
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
        -- ['Categories'] = {
        --     ['super'] = 'Super',
        --     ['sports'] = 'Sports',
        --     ['imports'] = 'Imports',
        --     ['oneofone'] = '1 Of 1',
        --     ['moviecars'] = 'Movie Cars',
        --     ['bikes'] = 'Motorcycles',
        -- },
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
    ['bigdealer'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(2738.3916015625, 3443.7351074219),
                vector2(2765.2141113281, 3507.5952148438),
                vector2(2687.33203125, 3539.8322753906),
                vector2(2661.0461425781, 3476.3610839844)
            },
            ['minZ'] = 50.0,
            ['maxZ'] = 60.0,
            ['size'] = 3.75
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 596, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['ShopLabel'] = 'Luxury Motors',
        -- ['Categories'] = {
        --     ['super'] = 'Super',
        --     ['sports'] = 'Sports',
        --     ['imports'] = 'Imports',
        --     ['oneofone'] = '1 Of 1',
        --     ['moviecars'] = 'Movie Cars',
        --     ['bikes'] = 'Motorcycles',
        -- },
        -- ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(2741.6, 3479.3, 56.48),
        ['ReturnLocation'] = vector3(135.52, -1101.24, 29.26),
        ['VehicleSpawn'] = vector4(2683.78, 3456.27, 55.76, 238.31),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(2736.15, 3452.3, 55.48, 0.32), --CORRECT
                defaultVehicle = 'bm66',
                chosenVehicle = 'bm66',
            },
            [2] = {
                coords = vector4(2730.03, 3454.77, 55.48, 356.88), --CORRECT
                defaultVehicle = 'rx7veilside',
                chosenVehicle = 'rx7veilside',
            },
            [3] = {
                coords = vector4(2724.02, 3456.85, 55.48, 358.49), --CORRECT
                defaultVehicle = 'domscharger',
                chosenVehicle = 'domscharger',
            },
            [4] = {
                coords = vector4(2718.14, 3459.56, 55.48, 0.06), --CORRECT
                defaultVehicle = 'mst',
                chosenVehicle = 'mst',
            },
            [5] = {
                coords = vector4(2712.06, 3462.69, 55.48, 2.76), --CORRECT
                defaultVehicle = 'btr04',
                chosenVehicle = 'btr04',
            },
            [6] = {
                coords = vector4(2706.14, 3465.5, 55.48, 2.98), --CORRECT
                defaultVehicle = 'giulia_2021',
                chosenVehicle = 'giulia_2021',
            },
            [7] = {
                coords = vector4(2700.06, 3467.88, 55.48, 3.16), --CORRECT
                defaultVehicle = 'patty',
                chosenVehicle = 'patty',
            },
            [8] = {
                coords = vector4(2694.0, 3471.07, 55.48, 6.57), --CORRECT
                defaultVehicle = 'lsen',
                chosenVehicle = 'lsen',
            },
            [9] = {
                coords = vector4(2687.93, 3473.38, 55.48, 2.29), --CORRECT
                defaultVehicle = 'remower',
                chosenVehicle = 'remower',
            },
            [10] = {
                coords = vector4(2681.89, 3475.23, 55.48, 3.15), --CORRECT
                defaultVehicle = 'lambokart',
                chosenVehicle = 'lambokart',
            },
            [11] = {
                coords = vector4(2675.93, 3477.21, 55.48, 355.18), --CORRECT
                defaultVehicle = 'cozycoupe',
                chosenVehicle = 'cozycoupe',
            },
            [12] = {
                coords = vector4(2681.73, 3493.68, 55.48, 178.49), --CORRECT
                defaultVehicle = 'lc500',
                chosenVehicle = 'lc500',
            },
            [13] = {
                coords = vector4(2687.82, 3491.59, 55.48, 179.45), --CORRECT
                defaultVehicle = 'chrisv',
                chosenVehicle = 'chrisv',
            },
            [14] = {
                coords = vector4(2693.86, 3488.86, 55.48, 178.79), --CORRECT
                defaultVehicle = 'silvias15',
                chosenVehicle = 'silvias15',
            },
            [15] = {
                coords = vector4(2699.93, 3486.23, 55.48, 178.5), --CORRECT
                defaultVehicle = 'ocnetrongt',
                chosenVehicle = 'ocnetrongt',
            },
            [16] = {
                coords = vector4(2706.06, 3483.76, 55.48, 182.53), --CORRECT
                defaultVehicle = 'MVISIONGT',
                chosenVehicle = 'MVISIONGT',
            },
            [17] = {
                coords = vector4(2711.93, 3481.35, 55.48, 186.69), --CORRECT
                defaultVehicle = 'x3mache21',
                chosenVehicle = 'x3mache21',
            },
            [18] = {
                coords = vector4(2718.2, 3478.95, 55.48, 172.74), --CORRECT
                defaultVehicle = 'corvettec5z06',
                chosenVehicle = 'corvettec5z06',
            },
            [19] = {
                coords = vector4(2723.97, 3476.05, 55.48, 179.94), --CORRECT
                defaultVehicle = 'f1',
                chosenVehicle = 'f1',
            },
            [20] = {
                coords = vector4(2730.18, 3473.73, 55.48, 182.8), --CORRECT
                defaultVehicle = 'kev',
                chosenVehicle = 'kev',
            },
            [21] = {
                coords = vector4(2736.16, 3471.36, 55.48, 178.23), --CORRECT
                defaultVehicle = 'nissanr33tbk',
                chosenVehicle = 'nissanr33tbk',
            },
            [22] = {
                coords = vector4(2737.47, 3491.54, 55.48, 356.5), --CORRECT
                defaultVehicle = 'clkgtr',
                chosenVehicle = 'clkgtr',
            },
            [23] = {
                coords = vector4(2731.41, 3493.84, 55.48, 358.85), --CORRECT
                defaultVehicle = 'f1mcl',
                chosenVehicle = 'f1mcl',
            },
            [24] = {
                coords = vector4(2725.42, 3496.97, 55.48, 5.35), --CORRECT
                defaultVehicle = 'Victor',
                chosenVehicle = 'Victor',
            },
            [25] = {
                coords = vector4(2719.3, 3499.59, 55.48, 359.1), --CORRECT
                defaultVehicle = 'm3e30',
                chosenVehicle = 'm3e30',
            },
            [26] = {
                coords = vector4(2713.47, 3502.09, 55.48, 5.5), --CORRECT
                defaultVehicle = 'gsxb',
                chosenVehicle = 'gsxb',
            },
            [27] = {
                coords = vector4(2707.37, 3504.38, 55.48, 1.1), --CORRECT
                defaultVehicle = 'eleanor',
                chosenVehicle = 'eleanor',
            },
            [28] = {
                coords = vector4(2701.27, 3506.62, 55.48, 358.66), --CORRECT
                defaultVehicle = 'caprice89',
                chosenVehicle = 'caprice89',
            },
            [29] = {
                coords = vector4(2695.21, 3509.26, 55.48, 2.64), --CORRECT
                defaultVehicle = 'missile',
                chosenVehicle = 'missile',
            },
            [30] = {
                coords = vector4(2689.19, 3511.62, 55.48, 1.07), --CORRECT
                defaultVehicle = '911sc',
                chosenVehicle = '911sc',
            },
            [31] = {
                coords = vector4(2689.0, 3528.26, 55.48, 175.29), --CORRECT
                defaultVehicle = 'h6',
                chosenVehicle = 'h6',
            },
            [32] = {
                coords = vector4(2695.16, 3526.14, 55.48, 182.06), --CORRECT
                defaultVehicle = 'dwrangler',
                chosenVehicle = 'dwrangler',
            },
            [33] = {
                coords = vector4(2701.08, 3523.79, 55.48, 186.99), --CORRECT
                defaultVehicle = 'trx',
                chosenVehicle = 'trx',
            },
            [34] = {
                coords = vector4(2707.23, 3521.45, 55.48, 180.87), --CORRECT
                defaultVehicle = 'silv86',
                chosenVehicle = 'silv86',
            },
            [35] = {
                coords = vector4(2713.06, 3519.12, 55.48, 183.59), --CORRECT
                defaultVehicle = 'monster',
                chosenVehicle = 'monster',
            },
            [36] = {
                coords = vector4(2719.16, 3516.06, 55.48, 182.26), --CORRECT
                defaultVehicle = 'wildtrak',
                chosenVehicle = 'wildtrak',
            },
            [37] = {
                coords = vector4(2725.11, 3513.82, 55.48, 180.79), --CORRECT
                defaultVehicle = 'srt2018',
                chosenVehicle = 'srt2018',
            },
            [38] = {
                coords = vector4(2737.54, 3509.46, 55.48, 185.34), --CORRECT
                defaultVehicle = 'x6m',
                chosenVehicle = 'x6m',
            },
            [39] = {
                coords = vector4(2743.45, 3507.05, 55.48, 183.06), --CORRECT
                defaultVehicle = 'x5bmw',
                chosenVehicle = 'x5bmw',
            },
            [40] = {
                coords = vector4(2749.63, 3504.7, 55.48, 181.06), --CORRECT
                defaultVehicle = 'teslax',
                chosenVehicle = 'teslax',
            },
            [41] = {
                coords = vector4(2755.77, 3502.4, 55.48, 180.38), --CORRECT
                defaultVehicle = 'g500',
                chosenVehicle = 'g500',
            },
            [42] = {
                coords = vector4(2731.36, 3512.77, 55.48, 178.88), --CORRECT
                defaultVehicle = 'dbxultimate',
                chosenVehicle = 'dbxultimate',
            },
        },
    },
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
        -- ['Categories'] = {
        --     ['motorcycles'] = 'Motorcycles',
        -- },
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
        -- ['Categories'] = {-- Categories available to browse
        --     ['boats'] = 'Boats'
        -- },
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
    -- ['air'] = {
    --     ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
    --     ['Zone'] = {
    --         ['Shape'] = {--polygon that surrounds the shop
    --             vector2(-1607.58, -3141.7),
    --             vector2(-1672.54, -3103.87),
    --             vector2(-1703.49, -3158.02),
    --             vector2(-1646.03, -3190.84)
    --         },
    --         ['minZ'] = 12.99, -- min height of the shop zone
    --         ['maxZ'] = 16.99, -- max height of the shop zone
    --         ['size'] = 7.0, -- size of the vehicles zones
    --     },
    --     ['Job'] = 'none', -- Name of job or none
    --     ['ShopLabel'] = 'Air Shop', -- Blip name
    --     ['showBlip'] = true, -- true or false
    --     ['blipSprite'] = 251, -- Blip sprite
    --     ['blipColor'] = 3, -- Blip color
    --     ['TestDriveTimeLimit'] = 1.5, -- Time in minutes until the vehicle gets deleted
    --     ['Location'] = vector3(-1652.76, -3143.4, 13.99), -- Blip Location
    --     ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94), -- Location to return vehicle, only enables if the vehicleshop has a job owned
    --     ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2), -- Spawn location when vehicle is bought
    --     ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
    --     ['ShowroomVehicles'] = {
    --         [1] = {
    --             coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
    --             defaultVehicle = 'volatus', -- Default display vehicle
    --             chosenVehicle = 'volatus' -- Same as default but is dynamically changed when swapping vehicles
    --         },
    --         [2] = {
    --             coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
    --             defaultVehicle = 'luxor2',
    --             chosenVehicle = 'luxor2'
    --         },
    --         [3] = {
    --             coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
    --             defaultVehicle = 'nimbus',
    --             chosenVehicle = 'nimbus'
    --         },
    --         [4] = {
    --             coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
    --             defaultVehicle = 'frogger',
    --             chosenVehicle = 'frogger'
    --         },
    --     },
    -- },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(872.23, -1173.5),
                vector2(868.88, -1162.7),
                vector2(900.91, -1156.54),
                vector2(901.96, -1173.71),
                vector2(883.59, -1174.47),
                vector2(884.59, -1161.29),
                vector2(890.06, -1155.0),
                vector2(907.71, -1168.71)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 5.75 -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 477, -- Blip sprite
        ['blipColor'] = 2, -- Blip color
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16), -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler', -- Default display vehicle
                chosenVehicle = 'hauler', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
}
