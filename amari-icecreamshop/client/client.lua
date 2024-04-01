local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}
local onDuty = false
local alcoholCount = 0

local function installCheck()
	local items = { "chocice", "vanice", "caramelice", "milk", "sugar", "chocchips", "vanillaescence", "mint", "strawberryice", "blueberryice", "cream", "orange", "strawberry", "blueberry", "orangeice", "mintice" } ------ CAN ADD MORE ITEMS / RECIPIES
	for k, v in pairs(items) do if QBCore.Shared.Items[v] == nil then print("Missing Item from QBCore.Shared.Items: '"..v.."'") end end
	if QBCore.Shared.Jobs["icecream"] == nil then print("Error: Job role not found - 'icecream'") end
end

local function jobCheck()
	canDo = true
	if not onDuty then TriggerEvent('QBCore:Notify', "Not clocked in!", 'error') canDo = false end
	return canDo
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
		installCheck()
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then if PlayerData.job.name == "icecream" then TriggerServerEvent("QBCore:ToggleDuty") end end
    end)
end)
RegisterNetEvent('QBCore:Client:OnJobUpdate') AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty') AddEventHandler('QBCore:Client:SetDuty', function(duty) onDuty = duty end)

AddEventHandler('onResourceStart', function(resource)
	installCheck()
    if GetCurrentResourceName() == resource then
		QBCore.Functions.GetPlayerData(function(PlayerData)
			PlayerJob = PlayerData.job
			if PlayerData.job.name == "icecream" then onDuty = PlayerJob.onduty end
		end)
    end
end)

CreateThread(function()
	local bossroles = {}
	for k, v in pairs(QBCore.Shared.Jobs["icecream"].grades) do
		if QBCore.Shared.Jobs["icecream"].grades[k].isboss == true then
			if bossroles["icecream"] ~= nil then
				if bossroles["icecream"] > tonumber(k) then bossroles["icecream"] = tonumber(k) end
			else bossroles["icecream"] = tonumber(k)	end
		end
	end
	for k, v in pairs(Config.Locations) do
		if Config.Locations[k].zoneEnable then
			JobLocation = PolyZone:Create(Config.Locations[k].zones, { name = Config.Locations[k].label, debugPoly = Config.Debug })
			JobLocation:onPlayerInOut(function(isPointInside) if not isPointInside and onDuty and PlayerJob.name == "icecream" then TriggerServerEvent("QBCore:ToggleDuty") end end)
		end
	end
	for k, v in pairs(Config.Locations) do
		if Config.Locations[k].zoneEnable then
			blip = AddBlipForCoord(Config.Locations[k].blip)
			SetBlipAsShortRange(blip, true)
			SetBlipSprite(blip, 621)
			SetBlipColour(blip, Config.Locations[k].blipcolor)
			SetBlipScale(blip, 0.6)
			SetBlipDisplay(blip, 6)
			BeginTextCommandSetBlipName('STRING')
			AddTextComponentString("Sundae Post")
			EndTextCommandSetBlipName(blip)
		end
	end

    --------------------------- EXPORTS TO BE ADDED BELOW ----------------------------------
	--STASHES
	exports['qb-target']:AddBoxZone("CreamPrepared", vector3(-1192.04, -1541.45, 5.36), 2.0, 2.5, { name="CreamPrepared", heading = 32.22, debugPoly=Config.Debug, minZ=4.36, maxZ=6.36 },
		{ options = { {  event = "amari-icecreamshop:Stash", icon = "fas fa-box-open", label = "Storage", stash = "Shelf" }, },  distance = 2.0 })
    --CLOCKIN
	exports['qb-target']:AddBoxZone("CreamClockin", vector3(-1190.28, -1546.52, 4.39), 3.5, 0.5, { name="CreamClockin", heading = 217.86, debugPoly=Config.Debug, minZ=3.6, maxZ=6.6 },
    	{ options = { { type = "server", event = "QBCore:ToggleDuty", icon = "fas fa-user-check", label = "Toggle Duty", job = "icecream" }, }, distance = 2.0 })
	--PAYMENTS
    exports['qb-target']:AddBoxZone("CreamReceipt", vector3(-1188.03, -1542.1, 5.86), 0.5, 0.5, { name="CreamReceipt", heading = 217.86, debugPoly=Config.Debug, minZ = 3.86, maxZ = 7.86, },
		{ options = { { event = "jim-payments:client:Charge", icon = "fas fa-credit-card", label = "Charge Customer", job = "icecream" }, }, distance = 2.0 })
    --TRAYS
	exports['qb-target']:AddBoxZone("CreamCounter", vector3(-1192.99, -1543.2, 5.6), 0.6, 0.6, { name="CreamCounter", heading = 122.89, debugPoly=Config.Debug, minZ=3.6, maxZ=6.6 },
    	{ options = { { event = "amari-icecreamshop:Stash", icon = "fas fa-hamburger", label = "Open Counter", stash = "Counter" }, }, distance = 2.0	})
	--FRIDGE
	exports['qb-target']:AddBoxZone("CreamFridge", vector3(-1189.7, -1543.21, 5.8), 3.5, 0.5, { name="CreamFridge", heading = 213.73, debugPoly=Config.Debug, minZ = 3.8, maxZ = 7.8, },
		{ options = { {  event = "amari-icecreamshop:Stash", icon = "fas fa-temperature-low", label = "Open Fridge", stash = "Fridge", job = "icecream" }, }, distance = 2.0 })
    --WARESTORAGE
	exports['qb-target']:AddBoxZone("CreamStorage", vector3(-1191.17, -1543.78, 4.39), 4.0, 1.5, { name="CreamStorage", heading = 217.86, debugPoly=Config.Debug, minZ=3.6, maxZ=6.6 },
		{ options = { {  event = "amari-icecreamshop:Shop", icon = "fas fa-box-open", label = "Open Store", job = "icecream" }, }, distance = 2.0 })
	--ICECREAM MAKER
	exports['qb-target']:AddBoxZone("CreamHob", vector3(-1189.1, -1538.98, 4.39), 1.5, 0.6, { name="CreamHob", heading = 43.05, debugPoly=Config.Debug, minZ=2.39, maxZ=6.39 },
		{ options = { { event = "amari-icecreamshop:Menu:Hob", icon = "fas fa-temperature-high", label = "Use Ice Cream Churner", job = "icecream" }, }, distance = 2.5 })	
end)

RegisterNetEvent('amari-icecreamshop:MakeItem', function(data)
	if data.craftable then
		for k, v in pairs(data.craftable[data.tablenumber]) do
			QBCore.Functions.TriggerCallback('amari-icecreamshop:get', function(amount)
				if not amount then TriggerEvent('QBCore:Notify', "You don't have the correct ingredients", 'error') else TriggerEvent("amari-icecreamshop:FoodProgress", data) end
			end, data.item, data.tablenumber, data.craftable)
		end
	end
end)

RegisterNetEvent('amari-icecreamshop:Stash', function(data) TriggerServerEvent("inventory:server:OpenInventory", "stash", "Cream_"..data.stash) TriggerEvent("inventory:client:SetCurrentStash", "Cream_"..data.stash) end)

RegisterNetEvent('amari-icecreamshop:Shop', function() if not jobCheck() then return else TriggerServerEvent("inventory:server:OpenInventory", "shop", "icecream", Config.Items) end end)

RegisterNetEvent('amari-icecreamshop:FoodProgress', function(data)
	QBCore.Functions.Progressbar('making_food', data.bartext..QBCore.Shared.Items[data.item].label, data.time, false, false, {
		disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true, },
		{ animDict = data.animDict,	anim = data.anim, flags = 8, },
	{}, {}, function()
		TriggerServerEvent('amari-icecreamshop:GetFood', data)
		StopAnimTask(GetPlayerPed(-1), data.animDict, data.anim, 1.0)
	end, function()
		TriggerEvent('inventory:client:busy:status', false)
		TriggerEvent('QBCore:Notify', "Cancelled!", 'error')
	end)
end)

RegisterNetEvent('amari-icecreamshop:Menu:Hob', function()
	if not jobCheck() then return end
	local HobMenu = {}
	HobMenu[#HobMenu + 1] = { header = "Churner Menu", txt = "", isMenuHeader = true }
		for i = 1, #Crafting.Hob do
			for k, v in pairs(Crafting.Hob[i]) do
				if k ~= "img" then
					local text = ""
					local setheader = QBCore.Shared.Items[k].label
					if Crafting.Hob[i]["img"] ~= nil then setheader = Crafting.Hob[i]["img"]..setheader end
					for l, b in pairs(Crafting.Hob[i][tostring(k)]) do
						if b == 1 then number = "" else number = " x"..b end
						text = text.."- "..QBCore.Shared.Items[l].label..number.."<br>"
						if b == 0 then text = "" end
						settext = text
						end
					HobMenu[#HobMenu + 1] = { header = "<img src=nui://"..Config.link..QBCore.Shared.Items[k].image.." width=35px> "..setheader, txt = settext,
											  params = { event = "amari-icecreamshop:MakeItem", args = { item = k, tablenumber = i, craftable = Crafting.Hob,
														 bartext = "Preparing a ", time = 7000, animDict = "amb@prop_human_bbq@male@base", anim = "base" } } }
					settext, setheader = nil
				end
			end
		end
	exports['qb-menu']:openMenu(HobMenu)
end)

RegisterNetEvent('amari-icecreamshop:client:Eat', function(itemName)
	TriggerEvent('animations:client:EmoteCommandStart', {"burger"})
    QBCore.Functions.Progressbar("eat_something", "Eating "..QBCore.Shared.Items[itemName].label.."..", 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[itemName], "remove", 1)
		TriggerServerEvent("QBCore:Server:RemoveItem", itemName, 1)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
		if QBCore.Shared.Items[itemName].thirst then TriggerServerEvent("QBCore:Server:SetMetaData", "thirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + QBCore.Shared.Items[itemName].thirst) end
		if QBCore.Shared.Items[itemName].hunger then TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + QBCore.Shared.Items[itemName].hunger) end
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
    end)
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
        exports['qb-target']:RemoveZone("CreamReceipt")
        exports['qb-target']:RemoveZone("CreamCounter")
        exports['qb-target']:RemoveZone("CreamHob")
		exports['qb-target']:RemoveZone("CreamStorage")
		exports['qb-target']:RemoveZone("CreamFridge")
		exports['qb-target']:RemoveZone("CreamPrepared")
    end
end)