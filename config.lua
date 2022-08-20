Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 25 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 48 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = false -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-32.02657699585, -1101.5877685547),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0, -- min height of the shop zone
            ['maxZ'] = 28.0, -- max height of the shop zone
            ['size'] = 2.75 -- size of the vehicles zones
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
            ['motorcycles'] = 'Motorcycles',
            ['vans'] = 'Vans',
            ['cycles'] = 'Bicycles',
            ['custom'] = 'Custom Vehicles'
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42), -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'adder', -- Default display vehicle
                chosenVehicle = 'adder', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'comet2',
                chosenVehicle = 'comet2'
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 't20',
                chosenVehicle = 't20'
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
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
    ['luxuryautos'] = {
        ['Type'] = 'managed',  -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-788.36016845703, -249.63743591309),
                vector2(-772.89184570313, -243.73014831543),
                vector2(-760.07312011719, -238.43655395508),
                vector2(-783.64318847656, -198.9468536377),
                vector2(-790.96185302734, -203.83338928223),
                vector2(-800.06072998047, -188.17231750488),
                vector2(-815.92437744141, -197.20959472656),
                vector2(-816.45330810547, -196.55017089844),
                vector2(-818.30737304688, -197.78021240234)
            },
            ['minZ'] = 37.0383644104,
            ['maxZ'] = 37.511798858643,
            ['size'] = 2.75, -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Autos',
        ['showBlip'] = true,  -- true or false
        ['blipSprite'] = 596,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = {
            ['super'] = 'Super',
            ['sports'] = 'Sports',
            ['imports'] = 'Imports',
            ['oneofone'] = '1 Of 1',
            ['moviecars'] = 'Movie Cars',
        },
        -- ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-799.33, -221.63, 37.08),
        ['ReturnLocation'] = vector3(-768.52, -231.68, 37.08),
        ['VehicleSpawn'] = vector4(-773.7, -233.67, 37.08, 205.88),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-783.43, -223.39, 36.32, 131.13), -- where the vehicle will spawn on display
                defaultVehicle = 'dtdbolide', -- Default display vehicle
                chosenVehicle = 'dtdbolide', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-789.67, -240.15, 36.08, 171.37),
                defaultVehicle = 'hondacivictr',
                chosenVehicle = 'hondacivictr',
            },
            [3] = {
                coords = vector4(-792.49, -235.38, 36.08, 178.0),
                defaultVehicle = 'wrx15',
                chosenVehicle = 'wrx15',
            },
            [4] = {
                coords = vector4(-786.84, -244.61, 36.08, 163.44),
                defaultVehicle = 'r32',
                chosenVehicle = 'r32',
            },
            [5] = {
                coords = vector4(-795.71, -230.26, 36.08, 212.41),
                defaultVehicle = 'a80',
                chosenVehicle = 'a80',
            },
        }
    },
    ['LSPDVS'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(423.09365844727, -973.00476074219),
                vector2(423.15286254883, -1000.2853393555),
                vector2(424.45986938477, -1000.2731933594),
                vector2(424.55288696289, -998.75708007812),
                vector2(426.42709350586, -998.54864501953),
                vector2(426.63784790039, -1000.2899780273),
                vector2(440.32766723633, -1000.2852783203),
                vector2(440.40969848633, -998.76806640625),
                vector2(442.25427246094, -998.58880615234),
                vector2(442.52581787109, -1000.2886962891),
                vector2(450.04904174805, -1000.325012207),
                vector2(449.75857543945, -972.98345947266),
                vector2(442.52444458008, -973.03637695312),
                vector2(442.36883544922, -974.56939697266),
                vector2(440.66879272461, -974.69232177734),
                vector2(440.33126831055, -973.03521728516),
                vector2(426.63757324219, -973.03912353516),
                vector2(426.5283203125, -974.58276367188),
                vector2(424.78085327148, -974.78442382812),
                vector2(424.44320678711, -973.03863525391)
            },
            ['minZ'] = 25.7,  -- min height of the shop zone
            ['maxZ'] = 31.0,  -- max height of the shop zone
            ['size'] = 3.25, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'LSPD Vehicle Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['lspd'] = 'Los Santos Police Department',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(437.06, -993.06, 25.7), -- Blip Location
        ['ReturnLocation'] = vector3(437.43, -994.29, 25.7), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(431.24, -987.03, 25.7, 180.0), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(437.39, -988.92, 24.7, 90.34), -- where the vehicle will spawn on display
                defaultVehicle = 'code3cvpi', -- Default display vehicle
                chosenVehicle = 'code3cvpi', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    ['PILLBOXVS'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(317.38739013672, -562.07629394531),
                vector2(311.25842285156, -578.89056396484),
                vector2(311.67098999023, -579.52728271484),
                vector2(311.58505249023, -580.00805664062),
                vector2(318.3215637207, -582.45941162109),
                vector2(316.68591308594, -587.97698974609),
                vector2(333.85189819336, -594.22119140625),
                vector2(335.71618652344, -589.68133544922),
                vector2(337.83508300781, -590.47406005859),
                vector2(341.99743652344, -578.96179199219),
                vector2(340.28457641602, -578.25170898438),
                vector2(343.95080566406, -567.32470703125),
                vector2(326.50817871094, -560.98291015625),
                vector2(326.28707885742, -561.27447509766),
                vector2(322.58203125, -559.62005615234)
            },
            ['minZ'] = 28.8,  -- min height of the shop zone
            ['maxZ'] = 34.0,  -- max height of the shop zone
            ['size'] = 3.25, -- size of the vehicles zones
        },
        ['Job'] = 'ambulance', -- Name of job or none
        ['ShopLabel'] = 'Pillbox Vehicle Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['medical'] = 'Pillbox Hospital',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(328.86, -576.66, 28.8), -- Blip Location
        ['ReturnLocation'] = vector3(322.21, -566.11, 28.8), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(333.0, -575.86, 28.8, 340.91), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(327.4, -584.57, 27.8, 246.48), -- where the vehicle will spawn on display
                defaultVehicle = 'ambulance', -- Default display vehicle
                chosenVehicle = 'ambulance', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    ['LSFDVS'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(-654.83294677734, -106.79637908936),
                vector2(-644.15814208984, -100.70204162598),
                vector2(-640.17602539062, -96.939895629883),
                vector2(-640.70764160156, -95.743156433105),
                vector2(-637.91882324219, -93.2255859375),
                vector2(-632.06658935547, -93.821189880371),
                vector2(-631.99371337891, -95.004486083984),
                vector2(-628.79742431641, -95.560668945312),
                vector2(-629.3125, -99.937408447266),
                vector2(-632.72399902344, -99.900733947754),
                vector2(-633.16351318359, -102.82009887695),
                vector2(-629.83630371094, -103.70213317871),
                vector2(-630.39135742188, -108.07421875),
                vector2(-633.40612792969, -107.72986602783),
                vector2(-634.1533203125, -110.72512054443),
                vector2(-630.83990478516, -111.62652587891),
                vector2(-631.39916992188, -115.99180603027),
                vector2(-634.39007568359, -115.619140625),
                vector2(-635.0546875, -119.07189178467),
                vector2(-638.59582519531, -118.96114349365),
                vector2(-639.04846191406, -121.37124633789),
                vector2(-644.34326171875, -124.97634887695)
            },
            ['minZ'] = 37.8,  -- min height of the shop zone
            ['maxZ'] = 42.0,  -- max height of the shop zone
            ['size'] = 3.25, -- size of the vehicles zones
        },
        ['Job'] = 'ambulance', -- Name of job or none
        ['ShopLabel'] = 'LSFD Vehicle Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['medical'] = 'Los Santos Fire Department',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-641.69, -109.55, 37.96), -- Blip Location
        ['ReturnLocation'] = vector3(-637.43, -98.78, 38.05), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-645.06, -118.8, 37.88, 31.56), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-640.13, -112.7, 36.97, 82.36), -- where the vehicle will spawn on display
                defaultVehicle = 'fd13', -- Default display vehicle
                chosenVehicle = 'fd13', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    ['BCSOVS'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(1877.3469238281, 3710.4465332031),
                vector2(1887.3852539062, 3693.1352539062),
                vector2(1886.5712890625, 3692.4401855469),
                vector2(1887.1793212891, 3691.3298339844),
                vector2(1879.328125, 3686.9123535156),
                vector2(1871.3916015625, 3682.2609863281),
                vector2(1860.8262939453, 3701.0964355469)
            },
            ['minZ'] = 33.5,  -- min height of the shop zone
            ['maxZ'] = 38.0,  -- max height of the shop zone
            ['size'] = 3.25, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'BCSO Vehicle Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['bcso'] = 'Blaine County Sheriffs Office',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(1878.27, 3699.09, 33.54), -- Blip Location
        ['ReturnLocation'] = vector3(1878.99, 3690.44, 33.54), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(1866.47, 3699.32, 33.55, 207.62), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1875.62, 3703.35, 32.54, 125.63), -- where the vehicle will spawn on display
                defaultVehicle = 'valor18charg', -- Default display vehicle
                chosenVehicle = 'valor18charg', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },
    ['SAHPVS'] = {
        ['Type'] = 'free-use',  -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = { --polygon that surrounds the shop
                vector2(1542.9769287109, 805.17077636719),
                vector2(1556.5367431641, 828.70648193359),
                vector2(1564.4844970703, 824.08850097656),
                vector2(1566.3449707031, 826.67803955078),
                vector2(1569.3311767578, 825.19262695312),
                vector2(1563.58984375, 814.29345703125),
                vector2(1554.2863769531, 799.18859863281)
            },
            ['minZ'] = 77.0,  -- min height of the shop zone
            ['maxZ'] = 81.0,  -- max height of the shop zone
            ['size'] = 3.25, -- size of the vehicles zones
        },
        ['Job'] = 'police', -- Name of job or none
        ['ShopLabel'] = 'SASP Vehicle Shop', -- Blip name
        ['showBlip'] = false,  -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,  -- Blip color
        ['Categories'] = { -- Categories available to browse
            ['sahp'] = 'San Andreas State Police',
        },
        -- ['TestDriveTimeLimit'] = 0.5, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(1550.94, 813.11, 77.06), -- Blip Location
        ['ReturnLocation'] = vector3(1566.31, 823.08, 77.14), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(1557.63, 808.3, 77.1, 143.93), -- Spawn location when vehicle is bought
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(1559.6, 818.71, 76.14, 149.11), -- where the vehicle will spawn on display
                defaultVehicle = 'liberty18charg', -- Default display vehicle
                chosenVehicle = 'liberty18charg', -- Same as default but is dynamically changed when swapping vehicles
            },
        },
    },-- Add your next table under this comma
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
}
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
--         ['Categories'] = {-- Categories available to browse
--             ['helicopters'] = 'Helicopters',
--             ['planes'] = 'Planes'
--         },
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
