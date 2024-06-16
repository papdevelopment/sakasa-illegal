local QBCore = exports['qb-core']:GetCoreObject()



RegisterServerEvent('qb-pirates:esrarsat')
AddEventHandler('qb-pirates:esrarsat', function(item, ravz3, fiyat)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    toplamsat = ravz3 * fiyat

    if exports['ik-joblimit']:ControlEarning(src, 100) then
        if Player.Functions.RemoveItem(item, ravz3) then
            exports['ik-joblimit']:AddJobMoney(src, toplamsat)
            Player.Functions.AddMoney('cash', toplamsat , "Bank depost")
            TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[item], "remove", ravz3)
            TriggerClientEvent("QBCore:Notify",src, "Güzel iş biraz daha getir.", "success", 2500)
        else
            TriggerClientEvent("QBCore:Notify", src,  "Üzerinde Minumum " ..ravz3.. " Paketlenmiş Esrar olması gerek!", "error", 2500)
        end
    end
end)




--[ESRAR-PAKETLE]

RegisterNetEvent("qb-pirates:esrarambala")
AddEventHandler("qb-pirates:esrarambala", function(item, ravz2, paket)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplampaketle = ravz2 * paket
        
        if Player.Functions.RemoveItem(Config.IsleEsrarItem, ravz2) then
            if Player.Functions.AddItem(Config.PaketEsrarItem, toplampaketle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleEsrarItem], "remove", ravz2)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.PaketEsrarItem], "add", toplampaketle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.PaketEsrarItem, toplampaketle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz2.. " İşlenmiş Esrar olması gerek!", "error")
        end
    end)


-- ESRAR KES

RegisterNetEvent("qb-pirates:esrarisle")
AddEventHandler("qb-pirates:esrarisle", function(item, ravz1, isle)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplamisle = ravz1 * isle

        if Player.Functions.RemoveItem(Config.ToplaEsrarItem, ravz1) then
            if Player.Functions.AddItem(Config.IsleEsrarItem, toplamisle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item], "remove", ravz1)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleEsrarItem], "add", toplamisle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.IsleEsrarItem, toplamisle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz1.. " Esrar olması gerek!", "error")
        end
    end)

-- ESRAR YAKALAMA 



RegisterNetEvent("qb-pirates:esrartopla")
AddEventHandler("qb-pirates:esrartopla", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)

           randomtopla = math.random(Config.EsrarMin,Config.EsrarMax)
            if Player.Functions.AddItem(Config.ToplaEsrarItem, randomtopla) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.ToplaEsrarItem], "add", randomtopla)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.ToplaEsrarItem, randomtopla)
            end
    end)


    AddEventHandler('onResourceStart', function(resource)
        if resource == GetCurrentResourceName() then
            Citizen.Wait(5000)
            print('[^2sakasa-illegal^0] - ^1Started Version-2^0')
        end
    end)