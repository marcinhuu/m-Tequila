local QBCore = exports[Config.CoreName]:GetCoreObject()

----------------------------------------------------
--------- Blips
----------------------------------------------------
CreateThread(function()
    if Config.Blip.Enable then
        local blip = AddBlipForCoord(Config.Blip.Location) 
        SetBlipSprite(blip, Config.Blip.Sprite) 
        SetBlipDisplay(blip, Config.Blip.Display)
        SetBlipScale(blip, Config.Blip.Scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.Blip.Colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.Blip.Name) 
        EndTextCommandSetBlipName(blip)
    end
end)

----------------------------------------------------
--------- Events
----------------------------------------------------

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    onDuty = player.job.onduty
end)

RegisterNetEvent('m-Tequila:Client:Notify')
AddEventHandler("m-Tequila:Client:Notify", function(msg,type)
    Notify(msg,type)
end)

AddEventHandler("m-Tequila:Client:Storage", function()
    TriggerEvent(Config.Stash.StashInvTrigger, Config.Stash.NameOfStash)
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", Config.Stash.NameOfStash, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

AddEventHandler("m-Tequila:Client:OpenTray01", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray01")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray01", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("m-Tequila:Client:OpenTray02", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray02")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray02", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("m-Tequila:Client:OpenTray03", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray03")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray03", {
        maxweight = 500,
        slots = 5,
    })
end)

AddEventHandler("m-Tequila:Client:OpenTray04", function()
    TriggerEvent(Config.Stash.StashInvTrigger, "Tray04")
    TriggerServerEvent(Config.Stash.OpenInvTrigger, "stash", "Tray04", {
        maxweight = 500,
        slots = 5,
    })
end)

RegisterNetEvent("m-Tequila:Client:OpenShop", function(index)
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "tequila", {
        label = "tequila",
        items = Config.Items,
        slots = #Config.Items,
    })
end);

-- || ===============> Invoice

RegisterNetEvent('m-Tequila:Client:Faturamento', function()
    if Config.BillingType == "jim" then
        TriggerEvent("jim-payments:client:Charge", Config.Job)
    elseif Config.BillingType == "okok" then
        local dialog = exports[Config.Input]:ShowInput({
            header = Language.Input.Header,
            submitText = Language.Input.Submit,
            inputs = {
                { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount },
                { type = 'text', isRequired = true, name = 'reason', text = Language.Input.Reason },

            }
        })
        if dialog then
            if not dialog.id or not dialog.amount or not dialog.reason then return end
            TriggerServerEvent("okokBilling:CreateCustomInvoice", dialog.id, dialog.amount, dialog.reason, "tequila", "tequila", "tequila")
        end
    elseif Config.BillingType == "qb" then
        local dialog = exports[Config.Input]:ShowInput({
            header = Language.Input.Header,
            submitText = Language.Input.Submit,
            inputs = {
                { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount }
            }
        })
        if dialog then
            if not dialog.id or not dialog.amount then return end
            TriggerServerEvent("m-Tequila:Server:Billing", dialog.id, dialog.amount)
        end
    end
end)

if Config.Billing.EnableCommand then
    if Config.Billing == "jim" then
        RegisterCommand(Config.Billing.Command, function()
            TriggerEvent("jim-payments:client:Charge", Config.Job)
        end)
    elseif Config.Billing == "okok" then
        RegisterCommand(Config.Billing.Command, function()
            local dialog = exports[Config.Input]:ShowInput({
                header = Language.Input.Header,
                submitText = Language.Input.Submit,
                inputs = {
                    { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                    { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount },
                    { type = 'text', isRequired = true, name = 'reason', text = Language.Input.Reason },

                }
            })
            if dialog then
                if not dialog.id or not dialog.amount or not dialog.reason then return end
                TriggerServerEvent("okokBilling:CreateCustomInvoice", dialog.id, dialog.amount, dialog.reason, "tequila", "tequila", "tequila")
            end
        end)
    elseif Config.Billing == "qb" then
        RegisterCommand(Config.Billing.Command, function()
            local dialog = exports[Config.Input]:ShowInput({
                header = Language.Input.Header,
                submitText = Language.Input.Submit,
                inputs = {
                    { type = 'number', isRequired = true, name = 'id', text = Language.Input.Paypal },
                    { type = 'number', isRequired = true, name = 'amount', text = Language.Input.Amount }
                }
            })
            if dialog then
                if not dialog.id or not dialog.amount then return end
                TriggerServerEvent("m-Tequila:Server:Billing", dialog.id, dialog.amount)
            end
        end)
    end
end

function CraftNonAlcoholicMenu()
    local columns = { { header = Language.Menu.NonAlcoholic, isMenuHeader = true, }, }
    for k, v in pairs(Config.NonAlcoholic) do
        local item = {}
        item.header = "<img src=nui://"..Config.InvLink..QBCore.Shared.Items[v.hash].image.." width=35px style='margin-right: 10px'> " .. v.label
        local text = Language.Menu.Required.." <br>"
        for k, v in pairs(v.materials) do
            text = text .. "- " .. QBCore.Shared.Items[v.item].label .. ": " .. v.amount .. "<br>"
        end
        item.text = text
        item.params = { event = 'm-Tequila:client:CraftNonAlcoholic', args = { type = k } }
        table.insert(columns, item)
    end
    exports[Config.Menu]:openMenu(columns)
end

function CraftNonAlcoholic(weapon)
    QBCore.Functions.Progressbar('CraftNonAlcoholic', Language.Progressbars.Make..Config.NonAlcoholic[weapon].label, 5000, false, false, {
        disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,
    }, { animDict = "mini@repair", anim = "fixing_a_ped", }, {}, {}, function()
        Notify(Language.Notify.Make..Config.NonAlcoholic[weapon].label, 'success', 5000)
        TriggerServerEvent('m-Tequila:server:CraftNonAlcoholic', Config.NonAlcoholic[weapon].hash)
        for k, v in pairs(Config.NonAlcoholic[weapon].materials) do
             TriggerServerEvent('m-Tequila:Server:RemoveItem', v.item, v.amount)
             TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Notify(Language.Notify.Canceled, 'error', 5000)
    end)
end

RegisterNetEvent('m-Tequila:client:CraftNonAlcoholic', function(data)
    QBCore.Functions.TriggerCallback("m-Tequila:server:Materials", function(hasMaterials)
        if (hasMaterials) then
            CraftNonAlcoholic(data.type)
        else
            Notify(Language.Notify.NoMaterials, 'error', 5000)
            return
        end
    end, Config.NonAlcoholic[data.type].materials)
end)

function CraftAlcoholicMenu()
    local columns = { { header = Language.Menu.Alcoholic, isMenuHeader = true },}
    for k, v in pairs(Config.Alcoholic) do
        local item = {}
        item.header = "<img src=nui://"..Config.InvLink..QBCore.Shared.Items[v.hash].image.." width=35px style='margin-right: 10px'> " .. v.label
        local text = Language.Menu.Required.." <br>"
        for k, v in pairs(v.materials) do
            text = text .. "- " .. QBCore.Shared.Items[v.item].label .. ": " .. v.amount .. "<br>"
        end
        item.text = text
        item.params = { event = 'm-Tequila:client:CraftAlcoholic', args = { type = k } }
        table.insert(columns, item)
    end
    exports[Config.Menu]:openMenu(columns)
end

function CraftAlcoholic(weapon)
    QBCore.Functions.Progressbar('CraftAlcoholic', Language.Progressbars.Make..Config.Alcoholic[weapon].label, 5000, false, false, {
        disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,
    }, { animDict = "mini@repair", anim = "fixing_a_ped", }, {}, {}, function()
        Notify(Language.Notify.Make..Config.Alcoholic[weapon].label, 'success', 5000)
        TriggerServerEvent('m-Tequila:server:CraftAlcoholic', Config.Alcoholic[weapon].hash)
        for k, v in pairs(Config.Alcoholic[weapon].materials) do
             TriggerServerEvent('m-Tequila:Server:RemoveItem', v.item, v.amount)
             TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v.item], "remove")
        end
        ClearPedTasks(PlayerPedId())
    end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        Notify(Language.Notify.Canceled, 'error', 5000)
    end)
end

RegisterNetEvent('m-Tequila:client:CraftAlcoholic', function(data)
    QBCore.Functions.TriggerCallback("m-Tequila:server:Materials", function(hasMaterials)
        if (hasMaterials) then
            CraftAlcoholic(data.type)
        else
            Notify(Language.Notify.NoMaterials, 'error', 5000)
            return
        end
    end, Config.Alcoholic[data.type].materials)
end)
