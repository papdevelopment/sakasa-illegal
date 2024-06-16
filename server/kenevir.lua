local QBCore = exports['qb-core']:GetCoreObject()



RegisterServerEvent('qb-pirates:kenevirsat')
AddEventHandler('qb-pirates:kenevirsat', function(item, ravz3, fiyat)
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

RegisterNetEvent("qb-pirates:kenevirambala")
AddEventHandler("qb-pirates:kenevirambala", function(item, ravz2, paket)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplampaketle = ravz2 * paket
        
        if Player.Functions.RemoveItem(Config.IsleKenevirItem, ravz2) then
            Player.Functions.RemoveItem(Config.Poset, ravz2)
            if Player.Functions.AddItem(Config.PaketKenevirItem, toplampaketle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleKenevirItem], "remove", ravz2)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.PaketKenevirItem], "add", toplampaketle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.PaketKenevirItem, toplampaketle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz2.. " İşlenmiş Esrar olması gerek!", "error")
        end
    end)


-- TAVUK KES

RegisterNetEvent("qb-pirates:kenevirisle")
AddEventHandler("qb-pirates:kenevirisle", function(item, ravz1, isle)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplamisle = ravz1 * isle

        if Player.Functions.RemoveItem(Config.ToplaKenevirItem, ravz1) then
            if Player.Functions.AddItem(Config.IsleKenevirItem, toplamisle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item], "remove", ravz1)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleKenevirItem], "add", toplamisle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.IsleKenevirItem, toplamisle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz1.. " Kenevir olması gerek!", "error")
        end
    end)

-- TAVUK YAKALAMA 



RegisterNetEvent("qb-pirates:kenevirtopla")
AddEventHandler("qb-pirates:kenevirtopla", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)

           randomtopla = math.random(Config.KenevirMin,Config.KenevirMax)
            if Player.Functions.AddItem(Config.ToplaKenevirItem, randomtopla) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.ToplaKenevirItem], "add", randomtopla)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.ToplaKenevirItem, randomtopla)
            end
    end)
