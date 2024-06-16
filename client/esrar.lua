local QBCore = exports['qb-core']:GetCoreObject()
---------------------------------------------------------------------------------------------------
for k, v in pairs(Config.esrarsat) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.5, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:esrar-sat:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:esrar-sat:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"}
    }
    for k, v in pairs(icerik) do
        
        table.insert(contextdata, {header = v.label, txt = v.fiyat .. "$ (Adet)", icon = "fas fa-dollar-sign", params = { 
            event = "ravz-esrar-sat:client:openDialog",
            args =  {
                item = v.item,
                fiyat = v.fiyat,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-esrar-sat:client:openDialog", function(data)
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
            TriggerServerEvent("qb-pirates:esrarsat", item, ravz3, fiyat)
        end
    end
    
end)


---------------------------------------------------------------------------------------------------

--[ESRAR-PAKETLE]

for k, v in pairs(Config.esrarpaket) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.5, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:esrar-paketle:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:esrar-paketle:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"}
    }
    for k, v in pairs(icerik) do
        
        table.insert(contextdata, {header = v.label, txt = v.paket .. " (Adet)", icon = "fas fa-right-to-bracket", params = { 
            event = "ravz-esrar-paketle:client:openDialog",
            args =  {
                item = v.item,
                paket = v.paket,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-esrar-paketle:client:openDialog", function(data)
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
            TriggerEvent("qb-pirates:esrar-prog", item, ravz2, paket)
        end
    end
    
end)

RegisterNetEvent("qb-pirates:esrar-prog", function(item, ravz2, paket)
    exports['progressbar']:Progress({
        name = "Esrar",
        duration = 1000,
        label = "İşlenmiş Esrarları Poşetliyorsun...",
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
            TriggerServerEvent("qb-pirates:esrarambala", item, ravz2, paket)
        end
    end)
end)
---------------------------------------------------------------------------------------------------

--[TAVUK-KESME]

for k, v in pairs(Config.esrarisle) do
    exports['qb-target']:AddCircleZone("ravz-"..k, vector3(v.konum.x, v.konum.y, v.konum.z), 1.0, {
        name = "ravz-"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "ravz:esrar-isle:main",
                icon = "fas fa-dungeon",
                label = v.isim,
                args = v.icerik,
            },
        },
        distance = 2.0
    })
end




RegisterNetEvent("ravz:esrar-isle:main", function(data)
    icerik = data.args
    contextdata = {
        {header = data.label, isMenuHeader = true, icon = "fas fa-person"} 
    }
    for k, v in pairs(icerik) do
       
        table.insert(contextdata, {header = v.label, txt = v.isle .. " (Adet)", icon = "fas fa-utensils", params = {
            event = "ravz-esrar-isle:client:openDialog",
            args =  {
                item = v.item,
                isle = v.isle,
            },
        }})

    end

    exports["qb-menu"]:openMenu(contextdata)
end)

RegisterNetEvent("ravz-esrar-isle:client:openDialog", function(data)
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
            TriggerEvent("qb-pirates:esrarisle-prog", item, ravz1, isle)
        end
    end
    
end)

RegisterNetEvent("qb-pirates:esrarisle-prog", function(item, ravz1, isle)
    exports['progressbar']:Progress({
        name = "Tavuk",
        duration = 1000,
        label = "Esrarları İşliyorsun...",
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
            TriggerServerEvent("qb-pirates:esrarisle", item, ravz1, isle)
        end
    end)
end)
---------------------------------------------------------------------------------------------------


for k, v in pairs(Config.EsrarTopla) do
    exports['qb-target']:AddCircleZone("Esrar Topla"..k, vector3(v.x, v.y, v.z), 1.5, {
        name = "Esrar Topla"..k,
        debugPoly = false,
    }, {
        options = {
            {
                type = "client",
                event = "qb-pirates:esrartopla-prog",
                icon = "fas fa-drumstick-bite",
                label = "Esrar Topla", 
            },
        },
        distance = 2.5
    })
end



RegisterNetEvent("qb-pirates:esrartopla-prog", function()
    exports['progressbar']:Progress({
        name = "Esrar",
        duration = 1000,
        label = "Esrar Topluyorsun...",
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
            TriggerServerEvent("qb-pirates:esrartopla")
        end
    end)
end)
---------------------------------------------------------------------------------------------------

--[[[TEXTLERİ KAPATIRSAN BURAYI DA KAPAT]

CreateThread(function()
    while true do
        local InRange = false
        local ped = PlayerPedId()
        local pos = GetEntityCoords(ped)

        for ravz, _ in pairs(Config.ravza) do
            local dist = #(pos - vector3(Config.ravza[ravz]['coords']['x'], Config.ravza[ravz]['coords']['y'], Config.ravza[ravz]['coords']['z']))
            if dist < 10 then
                InRange = true
                if dist < 4 then
                    QBCore.Functions.DrawText3D(Config.ravza[ravz]['coords']['x'], Config.ravza[ravz]['coords']['y'], Config.ravza[ravz]['coords']['z'] + 0.2, '[ 👁️     ]     '..Config.ravza[ravz]['label'])
                        
                end
            end
        end

        if not InRange then
            Wait(5000)
        end
        Wait(5)
    end
end)]]



if Config.EnableBlips then
	CreateThread(function()
		for _,v in pairs(Config.Blips) do
			local blip = AddBlipForCoord(v.coord)
			SetBlipSprite(blip, v.sprite)
			SetBlipScale(blip, v.scale)
			SetBlipColour(blip, v.color)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(v.label)
			EndTextCommandSetBlipName(blip)
		end
	end)
end
	

CreateThread(function()
	for _,v in pairs(Config.Peds) do
		RequestModel(v.model)
		while not HasModelLoaded(v.model) do Wait(1) end
		v.handle = CreatePed(4, v.model, v.coords.x, v.coords.y, v.coords.z-1.0, v.heading, false, false)
		SetPedFleeAttributes(v.handle, 0, 0)
		SetPedDropsWeaponsWhenDead(v.handle, false)
		SetPedDiesWhenInjured(v.handle, false)
		SetEntityInvincible(v.handle , true)
		FreezeEntityPosition(v.handle, true)
		SetBlockingOfNonTemporaryEvents(v.handle, true)
		if v.anim.type == 1 then
			TaskStartScenarioInPlace(v.handle, v.anim.name, 0, true)
		elseif v.anim.type == 2 then
			RequestAnimDict(v.anim.dict)
			TaskPlayAnim(v.handle, v.anim.dict, v.anim.name, 8.0, 1, -1, 49, 0, false, false, false)
		end
	end
end)
