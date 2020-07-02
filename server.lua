-----------------------------------
-- Area of Patrol, Made by FAXES --
-----------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---

FaxCurPT = false
curVersion = "3.3"

local function has_value(table, val)
	if table then
		for index, value in ipairs(table) do
			if value == val then
				return true
			end
		end
	end
	return false
end
function GetDiscordPermissionSet(src)
	if usingDiscordPerms then
		local passAuth = false
		for k, v in ipairs(GetPlayerIdentifiers(src)) do
			if string.sub(v, 1, string.len("discord:")) == "discord:" then
				identifierDiscord = v
			end
		end
		if identifierDiscord then
			usersRoles = exports.discord_perms:GetRoles(src)
			for index, valueReq in ipairs(discordRoleIds) do 
				if has_value(usersRoles, valueReq) then
					passAuth = true
				end
				if next(discordRoleIds,index) == nil then
					if passAuth == true then
						return true
					else
						return false
					end
				end
			end
		else
			print("~1~[Fax-AOP] No Discord ID found for '" .. GetPlayerName(src) .. "'~r~")
			return false
		end
	end
end

RegisterServerEvent('AOP:Startup')
AddEventHandler('AOP:Startup', function()
	Wait(3000)
	TriggerClientEvent("AOP:RunConfig", -1)
	Wait(30000)
	SetMapName("RP : " .. FaxCurAOP)
end)

TriggerEvent("AOP:Startup")

RegisterCommand(AOPCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or GetDiscordPermissionSet(source) or not usingPerms then
		FaxCurAOP = table.concat(args, " ")
		if(source == 0)then;print("AOP changed to: " .. FaxCurAOP);end
		TriggerEvent("AOP:Sync")
		SetMapName("RP : " .. FaxCurAOP)
		if AOPChangeNotification then
				TriggerClientEvent("AOP:DisNotification", -1, featColor .. "Area of Patrol ~w~has changed!~n~AOP: " .. FaxCurAOP)
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)


RegisterServerEvent('AOP:Sync')
AddEventHandler('AOP:Sync', function()
	TriggerClientEvent('AOP:SendAOP', -1, FaxCurAOP)
end)

RegisterCommand(PTCommand, function(source, args, rawCommand)
	if peacetime then
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or GetDiscordPermissionSet(source) or not usingPerms then
			if(source == 0)then;print("Peacetime toggled");end
			if not FaxCurPT then
				TriggerClientEvent("AOP:DisNotification", -1, PTOnMessage)
				FaxCurPT = true
				TriggerEvent('AOP:PTSync')
			elseif FaxCurPT then
				TriggerClientEvent("AOP:DisNotification", -1, PTOffMessage)
				FaxCurPT = false
				TriggerEvent('AOP:PTSync')
			end
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
	end
end)

RegisterServerEvent('AOP:PTSync')
AddEventHandler('AOP:PTSync', function()
	TriggerClientEvent('AOP:SendPT', -1, FaxCurPT)
end)

Citizen.CreateThread(function()
    while autoChangeAOP do
		local players = GetPlayers()
		for a = 1, #players do
			if players[a] > "30" then -- over 30
				FaxCurAOP = ACAOPOver30
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			elseif players[a] < "5" then -- under 5
				FaxCurAOP = ACAOPUnder5
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			elseif players[a] < "10" then -- under 10
				FaxCurAOP = ACAOPUnder10
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			elseif players[a] < "20" then -- under 20
				FaxCurAOP = ACAOPUnder20
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			elseif players[a] < "30" then -- under 30
				FaxCurAOP = ACAOPUnder30
				SetMapName("RP : " .. FaxCurAOP)
				TriggerEvent("AOP:Sync")
			end
		end
		TriggerEvent("AOP:Sync")
		Citizen.Wait(120 * 1000)
	end
end)

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
-----------------------------------------------------------
-- THE BELOW IS FOR DEBUGGING AND CHECKERS. DO NOT TOUCH --
--       Touching the below results in NO support!       --
-----------------------------------------------------------

RegisterCommand("aopstatus", function(source, args, rawCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "Current AOP: " .. FaxCurAOP)
	TriggerClientEvent("Fax:ClientPrint", source, "AOP Command: " .. AOPCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "PT Command: " .. PTCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "Feat Color: " .. featColor)
	TriggerClientEvent("Fax:ClientPrint", source, "Auto Change AOP: " .. tostring(autoChangeAOP))
	TriggerClientEvent("Fax:ClientPrint", source, "Using Permissions: " .. tostring(usingPerms))
	TriggerClientEvent("Fax:ClientPrint", source, "Peacetime Func Enabled: " .. tostring(peacetime))
	TriggerClientEvent("Fax:ClientPrint", source, "User Time Enabled: " .. tostring(localTime))
	TriggerClientEvent("Fax:ClientPrint", source, "AOP Location Setting: " .. tostring(AOPLocation))
	TriggerClientEvent("Fax:ClientPrint", source, "AOP Spawn Points: " .. tostring(AOPSpawnsEnabled))
	if AOPLocation == 6 then
		TriggerClientEvent("Fax:ClientPrint", source, "AOP Location X Setting: " .. tostring(AOPx))
		TriggerClientEvent("Fax:ClientPrint", source, "AOP Location Y Setting: " .. tostring(AOPy))
	end
	TriggerClientEvent("Fax:ClientPrint", source, "------------------")
	TriggerClientEvent("Fax:ClientPrint", source, "Current Version: " .. curVersion)
	TriggerClientEvent("Fax:ClientPrint", source, "Script Credits: Script made by FAXES, Discord: FAXES#8655 - http://faxes.zone/discord")
end)

PerformHttpRequest("https://raw.githubusercontent.com/FAXES/Area-of-Patrol/master/announce.json", function(err, shit, headers)
	local data = json.decode(shit)
	if data.status == 1 and curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^5 New Script Version: ^7" .. data.version .. ". ^5New Announcement: ^7" .. data.message .. "\n")
	elseif data.status == 1 then
		print("\n^5[Fax-AOP ^7- ^1Announcement^5]^7 " .. data.message .. "\n")
	elseif curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^7 Fax-AOP has a new version! Your version: " .. curVersion .. ". New version: " .. data.version .. "\nChangelog: " .. data.changelog .. "\n")
	else
		print("\n^5[Fax-AOP]^7 Status: ^2Script (Re)Started^7\n")
	end
end)