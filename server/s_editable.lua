local QBCore = exports[Config.CoreName]:GetCoreObject()

RegisterNetEvent("m-Tequila:Server:Billing", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == Config.Job then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (@citizenid, @amount, @society, @sender)', {
                        ['@citizenid'] = billed.PlayerData.citizenid,
                        ['@amount'] = amount,
                        ['@society'] = biller.PlayerData.job.name,
                        ['@sender'] = biller.PlayerData.charinfo.firstname
                    })
                    TriggerClientEvent("qb-phone:RefreshPhone", billed.PlayerData.source)
                    TriggerClientEvent('m-Tequila:Client:Notify', source, Language.Notify.Send, 'success', 5000)
                    TriggerClientEvent('m-Tequila:Client:Notify', billed.PlayerData.source, Language.Notify.InvoiceReceived)
                else
                    TriggerClientEvent('m-Tequila:Client:Notify', source, Language.Notify.HigherValue, 'error', 5000)
                end
            else
                TriggerClientEvent('m-Tequila:Client:Notify', source, Language.Notify.InvoiceOwn, 'error', 5000)
            end
        else
            TriggerClientEvent('m-Tequila:Client:Notify', source, Language.Notify.PlayerOffline, 'error', 5000)
        end
    else
        TriggerClientEvent('m-Tequila:Client:Notify', source, Language.Notify.NoPermission, 'error', 5000)
    end
end)



CreateThread(function()
    local food = { "cb_banana_nut", "cb_chocolatecup", "cb_strawberrycup", "cb_vanillacupcakes" }
    for k,v in pairs(food) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('m-Tequila:client:Eat', source, item.name) end) end
    
    local drinks = { "cb_berry_hydrating", "cb_green_dream", "cb_island_breeze", "cb_just_peachy", "cb_watermelon_dream", "cb_ban_straw_juice", "cb_banana_juice", "cb_kiwi_juice", "cb_strawberry_juice", "cb_orange_juice", "cb_cocktail", "cb_coconut_drink", "cb_island_fantasy", "cb_kamikaze", "cb_redhot_daquiri" }
    for k,v in pairs(drinks) do QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('m-Tequila:client:Drink', source, item.name) end) end
end)


