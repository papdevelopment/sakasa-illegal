local QBCore = exports['qb-core']:GetCoreObject()



RegisterServerEvent('qb-pirates:kokainsat')
AddEventHandler('qb-pirates:kokainsat', function(item, ravz3, fiyat)
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
            TriggerClientEvent("QBCore:Notify", src,  "Üzerinde Minumum " ..ravz3.. " Paketlenmiş Kokain olması gerek!", "error", 2500)
        end
    end
end)




--[ESRAR-PAKETLE]

RegisterNetEvent("qb-pirates:kokainambala")
AddEventHandler("qb-pirates:kokainambala", function(item, ravz2, paket)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplampaketle = ravz2 * paket
        
        if Player.Functions.RemoveItem(Config.IsleKokainItem, ravz2) then
            if Player.Functions.AddItem(Config.PaketKokainItem, toplampaketle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleKokainItem], "remove", ravz2)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.PaketKokainItem], "add", toplampaketle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.PaketKokainItem, toplampaketle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz2.. " İşlenmiş Kokain  olması gerek!", "error")
        end
    end)


-- TAVUK KES

RegisterNetEvent("qb-pirates:kokainisle")
AddEventHandler("qb-pirates:kokainisle", function(item, ravz1, isle)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        toplamisle = ravz1 * isle

        if Player.Functions.RemoveItem(Config.ToplaKokainItem, ravz1) then
            if Player.Functions.AddItem(Config.IsleKokainItem, toplamisle) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[item], "remove", ravz1)
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.IsleKokainItem], "add", toplamisle)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.IsleKokainItem, toplamisle)
            end
        else
            TriggerClientEvent('QBCore:Notify', src, "Üzerinde Minumum " ..ravz1.. " Kokain olması gerek!", "error")
        end
    end)

-- TAVUK YAKALAMA 



RegisterNetEvent("qb-pirates:kokaintopla")
AddEventHandler("qb-pirates:kokaintopla", function()
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)

           randomtopla = math.random(Config.KokainMin,Config.KokainMax)
            if Player.Functions.AddItem(Config.ToplaKokainItem, randomtopla) then 
                TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[Config.ToplaKokainItem], "add", randomtopla)
                TriggerClientEvent('QBCore:Notify', src, "İşlem Tamamlandı!", "success")
            else
                Player.Functions.AddItem(Config.ToplaKokainItem, randomtopla)
            end
    end)

