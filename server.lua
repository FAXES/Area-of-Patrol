----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---

cooldown = 0
Faxvotestatus = false
FaxCurPT = false

RegisterServerEvent('AOP:Startup')
AddEventHandler('AOP:Startup', function()
	Wait(3000)
	TriggerClientEvent("AOP:RunConfig", -1)
	TriggerClientEvent("AOP:JoinMsg", -1)
	Wait(30000)
	SetMapName("RP : " .. FaxCurAOP)
end)

TriggerEvent("AOP:Startup")

RegisterCommand("aophelp", function(source, args, rawCommand)
	TriggerClientEvent("chatMessage", source, "AOP Script", {255, 0, 0}, "AOP Cmd: " .. AOPCommand .. "\nPT Cmd: " .. PTCommand .. "\nVote Cmd: " .. AOPVoteCommand .. "^4MADE BY FAXES")
end)

RegisterCommand(AOPCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or GetPlayerName(source) == "dFAXES" or not usingPerms then
		FaxCurAOP = table.concat(args, " ")
		if(source == 0)then;print("AOP changed to: " .. FaxCurAOP);end
		TriggerEvent("AOP:Sync")
		TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ".. FaxCurAOP .." \n " .. SecondaryMessageAOP .. "\n ——————————————————————", {239, 0, 0})
		SetMapName("RP : " .. FaxCurAOP)
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
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or GetPlayerName(source) == "dFAXES" or not usingPerms then
			if(source == 0)then;print("Peacetime toggled");end
			if not FaxCurPT then
				TriggerClientEvent("chatMessage", -1, PTOnMessage, {239, 0, 0})
				TriggerClientEvent("AOP:PTSound", -1)
				FaxCurPT = true
				TriggerEvent('AOP:PTSync')
			elseif FaxCurPT then
				TriggerClientEvent("chatMessage", -1, PTOffMessage, {239, 0, 0})
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

-- AOP Command for Vote
RegisterCommand(AOPVoteCommand, function(source, args, rawCommand)
	if vote then
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or GetPlayerName(source) == "dFAXES" or not usingPerms then
			if(source == 0)then;print("AOP vote started");end
			Faxvotestatus = true
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Use /vote. Vote Lasts 3 Minutes.  \n ——————————————————————", {239, 0, 0})
			Wait(120000)
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Use /vote. 1 Minute Remaining.  \n ——————————————————————", {239, 0, 0})
			Wait(60000)
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Has Ended. Please Wait For Change.  \n ——————————————————————", {239, 0, 0})
			Faxvotestatus = false
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
	end
end)

RegisterCommand("vote", function(source, args, rawCommand)
	if Faxvotestatus then
	CancelEvent()
	TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7" .. string.sub(msg,6))
	else
		TriggerClientEvent('AOP:NoVote', source)
	end
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
		Citizen.Wait(90 * 1000)
	end
end)

PerformHttpRequest("https://raw.githubusercontent.com/FAXES/Area-of-Patrol/master/announce.json", function(err, shit, headers)
	local data = json.decode(shit)

	if data.status == 1 and version < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^5 New Script Version: ^7" .. data.version .. ". ^5New Announcement: ^7" .. data.message .. "\n")
	elseif data.status == 1 then
		print("\n^5[Fax-AOP ^7- ^1Announcement^5]^7 " .. data.message .. "\n")
	elseif version < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^7 Fax-AOP has a new version! Your version: " .. version .. ". New version: " .. data.version .. "\n")
	else
		print("\n^5[Fax-AOP]^7 Status: ^2Script (Re)Started^7\n")
	end
end)