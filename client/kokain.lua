local QBCore = exports['qb-core']:GetCoreObject()
---------------------------------------------------------------------------------------------------
for k, v in pairs(Config.kokainsat) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.5, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:kokain-sat:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:kokain-sat:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"}
    }
    for k, v in pairs(icerik) do
        
        table.insert(contextdata, {header = v.label, txt = v.fiyat .. "$ (Adet)", icon = "fas fa-dollar-sign", params = { 
            event = "ravz-kokain-sat:client:openDialog",
            args =  {
                item = v.item,
                fiyat = v.fiyat,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-kokain-sat:client:openDialog", function(data)
    fiyat = data.fiyat
    item = data.item

    
    
    local keyboard, ravz3 = exports["nh-keyboard"]:Keyboard({
		header = "Ne kadar Satıcaksın?",
		rows = {"Miktar"}
	})
	if keyboard then
        ravz3 = tonumber(ravz3)
        if ravz3 == nil or ravz3 <= 0  then
            QBCore.Functions.Notify("Hatalı değer.", "error")
        else
            TriggerServerEvent("qb-pirates:kokainsat", item, ravz3, fiyat)
        end
    end
    
end)


---------------------------------------------------------------------------------------------------

--[ESRAR-PAKETLE]

for k, v in pairs(Config.kokainpaket) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.5, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:kokain-paketle:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:kokain-paketle:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"}
    }
    for k, v in pairs(icerik) do
        
        table.insert(contextdata, {header = v.label, txt = v.paket .. " (Adet)", icon = "fas fa-right-to-bracket", params = { 
            event = "ravz-kokain-paketle:client:openDialog",
            args =  {
                item = v.item,
                paket = v.paket,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-kokain-paketle:client:openDialog", function(data)
    paket = data.paket
    item = data.item

    
    
    local keyboard, ravz2 = exports["nh-keyboard"]:Keyboard({
		header = "Ne kadar Paketliceksin?",
		rows = {"Miktar"}
	})
	if keyboard then
        ravz2 = tonumber(ravz2)
        if ravz2 == nil or ravz2 <= 0  then
            QBCore.Functions.Notify("Hatalı değer.", "error")
        else
            TriggerEvent("qb-pirates:kokain-prog", item, ravz2, paket)
        end
    end
    
end)

RegisterNetEvent("qb-pirates:kokain-prog", function(item, ravz2, paket)
    exports['progressbar']:Progress({
        name = "Esrar",
        duration = 1000,
        label = "İşlenmiş Kokainleri Poşetliyorsun...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "amb@prop_human_bum_shopping_cart@male@idle_a",
            anim = "idle_c",
            flags = 49,
        },
    }, function(status)
        if not status then
            TriggerServerEvent("qb-pirates:kokainambala", item, ravz2, paket)
        end
    end)
end)
---------------------------------------------------------------------------------------------------

--[TAVUK-KESME]

for k, v in pairs(Config.kokainisle) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.0, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:kokain-isle:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:kokain-isle:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"} 
    }
    for k, v in pairs(icerik) do
       
        table.insert(contextdata, {header = v.label, txt = v.isle .. " (Adet)", icon = "fas fa-utensils", params = {
            event = "ravz-kokain-isle:client:openDialog",
            args =  {
                item = v.item,
                isle = v.isle,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-kokain-isle:client:openDialog", function(data)
    isle = data.isle
    item = data.item

    
    
    local keyboard, ravz1 = exports["nh-keyboard"]:Keyboard({
		header = "Ne kadar Kesiceksin?",
		rows = {"Miktar"}
	})
	if keyboard then
        ravz1 = tonumber(ravz1)
        if ravz1 == nil or ravz1 <= 0  then
            QBCore.Functions.Notify("Hatalı değer.", "error")
        else
            TriggerEvent("qb-pirates:kokainisle-prog", item, ravz1, isle)
        end
    end
    
end)

RegisterNetEvent("qb-pirates:kokainisle-prog", function(item, ravz1, isle)
    exports['progressbar']:Progress({
        name = "Kokain",
        duration = 1000,
        label = "Kokainleri İşliyorsun...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "amb@prop_human_bum_shopping_cart@male@idle_a",
            anim = "idle_c",
            flags = 49,
        },
    }, function(status)
        if not status then
            TriggerServerEvent("qb-pirates:kokainisle", item, ravz1, isle)
        end
    end)
end)
---------------------------------------------------------------------------------------------------
--TAVUK TOPLAMA

for k, v in pairs(Config.KokainToplama) do
    exports['qb-target']:AddCircleZone("Kokain Topla"..k, vector3(v.x, v.y, v.z), 10, {
        name = "Kokain Topla"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "qb-pirates:kokaintopla-prog",
                icon = "fas fa-drumstick-bite",
                label = "Kokain Topla", 
            },
        },
        distance = 2.5
    })
end



RegisterNetEvent("qb-pirates:kokaintopla-prog", function()
    exports['progressbar']:Progress({
        name = "Kokain",
        duration = 1000,
        label = "Kokain Topluyorsun...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "amb@prop_human_bum_shopping_cart@male@idle_a",
            anim = "idle_c",
            flags = 49,
        },
    }, function(status)
        if not status then
            TriggerServerEvent("qb-pirates:kokaintopla")
        end
    end)
end)
---------------------------------------------------------------------------------------------------

