local QBCore = exports[Config.CoreName]:GetCoreObject()

----------------------------------------------------
--------- TARGETS
----------------------------------------------------

-- || ===============> Stash
exports[Config.Target]:AddBoxZone("StashTequila", vector3(-562.64, 289.87, 82.18), 0.7, 0.5, 
    { name="StashTequila", heading = 355, debugPoly = false, minZ = 78.18, maxZ = 82.18 }, 
    { options = { {  event = "m-Tequila:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Non Alcool
exports[Config.Target]:AddBoxZone("NonAlcool", vector3(-563.2, 285.68, 82.18), 1.1, 0.5, 
    { name="NonAlcool", heading = 355, debugPoly = false, minZ = 80.78, maxZ = 82.78 }, 
    { options = { {   action = function() CraftNonAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Non Alcool 2
exports[Config.Target]:AddBoxZone("NonAlcool2", vector3(-566.37, 285.5, 85.38), 0.5, 0.3, 
    { name="NonAlcool2", heading = 356, debugPoly = false, minZ = 84.50, maxZ = 85.98 }, 
    { options = { {   action = function() CraftNonAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Alcool
exports[Config.Target]:AddBoxZone("Alcool", vector3(-563.03, 288.79, 82.18), 1.3, 0.5, 
    { name="Alcool", heading = 355, debugPoly = false, minZ = 80.78, maxZ = 82.78 }, 
    { options = { {   action = function() CraftAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Alcool 2
exports[Config.Target]:AddBoxZone("Alcool2", vector3(-566.25, 286.49, 85.38), 0.5, 0.3, 
    { name="Alcool2", heading = 356, debugPoly = false, minZ = 84.50, maxZ = 85.98 }, 
    { options = { {   action = function() CraftAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Shop Tequila
exports[Config.Target]:AddBoxZone("ShopTequila", vector3(-563.04, 285.28, 82.18), 0.7, 0.5, 
    { name="ShopTequila", heading = 355, debugPoly = false, minZ = 78.18, maxZ = 82.78 }, 
    { options = { {   event = "m-Tequila:Client:OpenShop", icon = "fa-solid fa-martini-glass-citrus", label = "Shop", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing
exports[Config.Target]:AddBoxZone("Billing", vector3(-563.01, 287.47, 82.18), 0.4, 0.5, 
    { name="Billing", heading = 355, debugPoly = false, minZ = 80.78, maxZ = 82.78 }, 
    { options = { {   event = "m-Tequila:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing2
exports[Config.Target]:AddBoxZone("Billing2", vector3(-563.28, 278.78, 82.98), 0.4, 0.4, 
    { name="Billing2", heading = 0, debugPoly = false, minZ = 80.58, maxZ = 83.58 }, 
    { options = { {   event = "m-Tequila:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing3
exports[Config.Target]:AddBoxZone("Billing3", vector3(-566.22, 284.74, 85.38), 0.5, 0.3, 
    { name="Billing3", heading = 270, debugPoly = false, minZ = 84.50, maxZ = 85.98 }, 
    { options = { {   event = "m-Tequila:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Duty
exports[Config.Target]:AddBoxZone("Duty", vector3(-562.78, 279.12, 82.98), 0.5, 0.5, 
    { name="Duty", heading = 356, debugPoly = false, minZ = 79.38, maxZ = 83.38 }, 
    { options = { {   action = function() Duty() end, icon = "fa-solid fa-clipboard-list", label = "Duty", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Door Down
exports[Config.Target]:AddBoxZone("DoorDown", vector3(-565.3, 284.15, 85.38), 1.1, 0.5, 
    { name="DoorDown", heading = 265, debugPoly = false, minZ = 84.78, maxZ = 86.78 }, 
    { options = { {  event = "m-Tequila:Client:GoDown", icon = "fa-solid fa-stairs", label = "First Floor", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Door Up
exports[Config.Target]:AddBoxZone("DoorUp", vector3(-561.63, 290.25, 82.18), 1.2, 0.4, 
    { name="DoorUp", heading = 265, debugPoly = false, minZ = 81.38, maxZ = 83.38 }, 
    { options = { {  event = "m-Tequila:Client:GoUp", icon = "fa-solid fa-stairs", label = "Second Floor", job = Config.Job }, },  distance = 2.0 })
-- || ===============> BossMenu
exports[Config.Target]:AddBoxZone("BossMenu", vector3(-573.52, 293.96, 79.18), 2.9, 0.4, 
    { name="BossMenu", heading = 265, debugPoly = false, minZ = 75.18, maxZ = 79.18 }, 
    { options = { {  event = "qb-bossmenu:client:OpenMenu", icon = "fa-solid fa-clipboard-list", label = "Boss Menu", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Tray01
exports[Config.Target]:AddBoxZone("Tray01", vector3(-557.0, 291.12, 82.18), 0.5, 0.5, 
    { name="Tray01", heading = 0, debugPoly = false, minZ = 80.18, maxZ = 82.18 }, 
    { options = { {  event = "m-Tequila:Client:OpenTray01", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray02
exports[Config.Target]:AddBoxZone("Tray02", vector3(-555.63, 278.98, 82.18), 0.5, 0.5, 
    { name="Tray02", heading = 0, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
    { options = { {  event = "m-Tequila:Client:OpenTray02", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray03
exports[Config.Target]:AddBoxZone("Tray03", vector3(-561.04, 284.73, 82.18), 0.5, 0.3, 
    { name="Tray03", heading = 355, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
    { options = { {  event = "m-Tequila:Client:OpenTray03", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray04
exports[Config.Target]:AddBoxZone("Tray04", vector3(-560.94, 286.09, 82.18), 0.5, 0.3, 
    { name="Tray04", heading = 355, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
    { options = { {  event = "m-Tequila:Client:OpenTray04", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })

RegisterNetEvent('m-Tequila:Client:GoDown', function()
    local ped = PlayerPedId()
    SetEntityCoords(ped, vector4(-561.84, 289.8, 82.18, 177.1))
end)

RegisterNetEvent('m-Tequila:Client:GoUp', function()
    local ped = PlayerPedId()
    SetEntityCoords(ped, vector4(-565.31, 284.59, 85.38, 352.43))
end)