local QBCore = exports[Config.CoreName]:GetCoreObject()

QBCore.Functions.CreateUseableItem("tq_berry_hydrating", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_berry_hydrating", "tq berry hydrating", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["LemonSlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_green_dream", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_green_dream", "tq_green_dream", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["OrangeSlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_island_breeze", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_island_breeze", "tq_island_breeze", "amb@world_human_drinking@coffee@male@idle_a", "idle_b", 'v_ret_fh_bscup', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["BlueberrySlushy"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_just_peachy", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, true, "tq_just_peachy", 'tq_just_peachy', Config.Locals["Progressbar"]["Chewing"]["Time"], Config.Hunger["NormalGumball"], "mp_player_inteat@burger", "mp_player_int_eat_burger")
end)

QBCore.Functions.CreateUseableItem("tq_watermelon_dream", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, true, "tq_watermelon_dream", 'tq_watermelon_dream', Config.Locals["Progressbar"]["Chewing"]["Time"], Config.Hunger["BananaGumball"], "mp_player_inteat@burger", "mp_player_int_eat_burger")
end)

QBCore.Functions.CreateUseableItem("tq_ban_straw_juice", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, true, "tq_ban_straw_juice", 'tq_ban_straw_juice', Config.Locals["Progressbar"]["Chewing"]["Time"], Config.Hunger["BlueberryGumball"], "mp_player_inteat@burger", "mp_player_int_eat_burger")
end)

QBCore.Functions.CreateUseableItem("tq_banana_juice", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, true, "tq_banana_juice", 'tq_banana_juice', Config.Locals["Progressbar"]["Chewing"]["Time"], Config.Hunger["CherryGumball"], "mp_player_inteat@burger", "mp_player_int_eat_burger")
end)

QBCore.Functions.CreateUseableItem("tq_kiwi_juice", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, true, "tq_kiwi_juice", 'tq_kiwi_juice', Config.Locals["Progressbar"]["Chewing"]["Time"], Config.Hunger["MintGumball"], "mp_player_inteat@burger", "mp_player_int_eat_burger")
end)

QBCore.Functions.CreateUseableItem("tq_strawberry_juice", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_strawberry_juice", "tq_strawberry_juice", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_mug_02', 28422, { x=0.01, y=-0.01, z=-0.00 }, Config.Thirst["Coffee"], false, true)
end)

QBCore.Functions.CreateUseableItem("tq_orange_juice", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_orange_juice", "tq_orange_juice", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["Sprite"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_cocktail", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_cocktail", "tq_cocktail", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["CocaCola"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_coconut_drink", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, "tq_coconut_drink", "tq_coconut_drink.Pepper", "amb@world_human_drinking@coffee@male@idle_a", "idle_a", 'prop_plastic_cup_02', 28422, { x=0.01, y=-0.01, z=0.00 }, Config.Thirst["DRPepper"], true, false)
end)

QBCore.Functions.CreateUseableItem("tq_island_fantasy", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, false, "tq_island_fantasy", 'tq_island_fantasy', Config.Locals["Progressbar"]["Snacks"]["Time"], Config.Hunger["Nachos"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_ld_snack_01', 18905, { x=0.07, y=-0.02, z=0.00 })
end)

QBCore.Functions.CreateUseableItem("tq_kamikaze", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, false, "tq_kamikaze", 'tq_kamikaze', Config.Locals["Progressbar"]["Snacks"]["Time"], Config.Hunger["Crisps"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_ld_snack_01', 18905, { x=0.07, y=-0.02, z=0.00 })
end)

QBCore.Functions.CreateUseableItem("tq_redhot_daquiri", function(source, item)
    local src = source
    TriggerClientEvent("m-Tequila:DrinkAlcahol", src, false, "tq_redhot_daquiri", 'tq_redhot_daquiri', Config.Locals["Progressbar"]["Snacks"]["Time"], Config.Hunger["Crisps"], "mp_player_inteat@burger", "mp_player_int_eat_burger", 'prop_ld_snack_01', 18905, { x=0.07, y=-0.02, z=0.00 })
end)


RegisterNetEvent('m-Tequila:Server:RemoveItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
end)

RegisterNetEvent('m-Tequila:server:CraftNonAlcoholic', function(data, weapon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local receiveAmount = 1
    Player.Functions.AddItem(data, receiveAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
end)

RegisterNetEvent('m-Tequila:server:CraftAlcoholic', function(data, weapon)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local receiveAmount = 1
    Player.Functions.AddItem(data, receiveAmount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data], "add")
end)

QBCore.Functions.CreateCallback('m-Tequila:server:Materials', function(source, cb, materials)
    local src = source
    local tem = 0
    local player = QBCore.Functions.GetPlayer(source)
    for k, v in pairs(materials) do
        if player.Functions.GetItemByName(v.item) and player.Functions.GetItemByName(v.item).amount >= v.amount then
            tem = tem + 1
            if tem == #materials then
                cb(true)
            end
        else
            cb(false)
            return
        end
    end
end)
