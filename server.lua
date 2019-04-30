-----------------------------------
-- Area of Patrol, Made by FAXES --
-----------------------------------

--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---
--- NO NEED TO EDIT THIS FILE!!!! EDIT THE CONFIG.LUA ---

cooldown = 0
Faxvotestatus = false
FaxCurPT = false
curVersion = "3.0"

aopVoteLSCount = 0
aopVoteBCCount = 0
aopVoteStateCount = 0
aopVoteVineWoodCount = 0
aopVoteMirrorParkCount = 0
aopVoteDowntownCount = 0
aopVoteDavisCount = 0
aopVoteDelPCount = 0
aopVoteRockfordCount = 0
aopVoteSandyCount = 0
aopVoteHarmonyCount = 0
aopVoteGrapeSeedCount = 0
aopVotePaletoCount = 0

t = {
	voteLosSantos = aopVoteLSCount,
	voteBlaineCount = aopVoteBCCount,
	voteState = aopVoteStateCount,
	voteVinewood = aopVoteVineWoodCount,
	voteMirrorPark = aopVoteMirrorParkCount,
	voteDowntown = aopVoteDowntownCount,
	voteDavis = aopVoteDavisCount,
	voteDelPerro = aopVoteDelPCount,
	voteRockford = aopVoteRockfordCount,
	voteSandy = aopVoteSandyCount,
	voteHarmony = aopVoteHarmonyCount,
	voteGrape = aopVoteGrapeSeedCount,
	votePaleto = aopVotePaletoCount,
}

RegisterServerEvent('AOP:Startup')
AddEventHandler('AOP:Startup', function()
	Wait(3000)
	TriggerClientEvent("AOP:RunConfig", -1)
	TriggerClientEvent("AOP:JoinMsg", -1)
	Wait(30000)
	SetMapName("RP : " .. FaxCurAOP)
end)

TriggerEvent("AOP:Startup")

RegisterCommand(AOPCommand, function(source, args, rawCommand)
	if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
		FaxCurAOP = table.concat(args, " ")
		if(source == 0)then;print("AOP changed to: " .. FaxCurAOP);end
		TriggerEvent("AOP:Sync")
		-- TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ".. FaxCurAOP .." \n " .. SecondaryMessageAOP .. "\n ——————————————————————", {239, 0, 0})
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
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
			if(source == 0)then;print("Peacetime toggled");end
			if not FaxCurPT then
				-- TriggerClientEvent("chatMessage", -1, PTOnMessage, {239, 0, 0})
				-- TriggerClientEvent("AOP:PTSound", -1)
				TriggerClientEvent("AOP:DisNotification", -1, PTOnMessage)
				FaxCurPT = true
				TriggerEvent('AOP:PTSync')
			elseif FaxCurPT then
				-- TriggerClientEvent("chatMessage", -1, PTOffMessage, {239, 0, 0})
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

-- AOP Command for Vote
RegisterCommand(AOPVoteCommand, function(source, args, rawCommand)
	if vote then
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
			if(source == 0)then;print("AOP vote started");end
			Faxvotestatus = true
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Use /vote. Vote Lasts 3 Minutes.  \n ——————————————————————", {239, 0, 0})
			Wait(120000)
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Use /vote. 1 Minute Remaining.  \n ——————————————————————", {239, 0, 0})
			Wait(60000)
			Faxvotestatus = false
			local key = next(t)
			local max = t[key]

			for k, v in pairs(t) do
				if t[k] > max then
					key, max = k, v
				end
			end

			print(key, max) -- *** Testing ****

			if tostring(key) == "voteLosSantos" then
				FaxCurAOP = "Los Santos"
			elseif tostring(key) == "voteBlaineCount" then
				FaxCurAOP = "Blaine County"
			elseif tostring(key) == "voteState" then
				FaxCurAOP = "State wide"
			elseif tostring(key) == "voteVinewood" then
				FaxCurAOP = "Vinewood"
			elseif tostring(key) == "voteMirrorPark" then
				FaxCurAOP = "Mirror Park"
			elseif tostring(key) == "voteDowntown" then
				FaxCurAOP = "Downtown LS"
			elseif tostring(key) == "voteDavis" then
				FaxCurAOP = "Davis"
			elseif tostring(key) == "voteDelPerro" then
				FaxCurAOP = "Del Perro"
			elseif tostring(key) == "voteSandy" then
				FaxCurAOP = "Sandy Shores"
			elseif tostring(key) == "voteHarmony" then
				FaxCurAOP = "Harmony"
			elseif tostring(key) == "voteGrape" then
				FaxCurAOP = "Grapeseed"
			elseif tostring(key) == "votePaleto" then
				FaxCurAOP = "Paleto Bay"
			end

			TriggerEvent("AOP:Sync")
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ".. FaxCurAOP .." \n Vote score: " .. tostring(max) .. "\n ——————————————————————", {239, 0, 0})
			SetMapName("RP : " .. FaxCurAOP)

			Wait(3000)
			aopVoteLSCount = 0;aopVoteBCCount = 0;aopVoteStateCount = 0;aopVoteVineWoodCount = 0;aopVoteMirrorParkCount = 0;aopVoteDowntownCount = 0;
			aopVoteDavisCount = 0;aopVoteDelPCount = 0;aopVoteRockfordCount = 0;aopVoteSandyCount = 0;aopVoteHarmonyCount = 0;aopVoteGrapeSeedCount = 0;aopVotePaletoCount = 0
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
	end
end)

RegisterCommand("vote", function(source, args, rawCommand)
	local name = GetPlayerName(source)
	local arg1 = tostring(args[1])

	if not TriggerClientEvent("AOP:CheckVoteStatus", source) then
		CancelEvent()
	end
	
	if Faxvotestatus then
		if string.lower(arg1) == "ls" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Los Santos")
			aopVoteLSCount = aopVoteLSCount + 1
		elseif string.lower(arg1) == "state" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7State-wide")
			aopVoteStateCount = aopVoteStateCount + 1
		elseif string.lower(arg1) == "bc" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Blaine County")
			aopVoteBCCount = aopVoteBCCount + 1
		elseif string.lower(arg1) == "vinew" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Vinewood")
			aopVoteVineWoodCount = aopVoteVineWoodCount + 1
		elseif string.lower(arg1) == "mirrorp" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Mirror Park")
			aopVoteMirrorParkCount = aopVoteMirrorParkCount + 1
		elseif string.lower(arg1) == "downt" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Down Town")
			aopVoteDowntownCount = aopVoteDowntownCount + 1
		elseif string.lower(arg1) == "davis" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Davis")
			aopVoteDavisCount = aopVoteDavisCount + 1
		elseif string.lower(arg1) == "delperro" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Del Perro")
			aopVoteDelPCount = aopVoteDelPCount + 1
		elseif string.lower(arg1) == "rockfordh" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Rockford Hills")
			aopVoteRockfordCount = aopVoteRockfordCount + 1
		elseif string.lower(arg1) == "sandy" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Sandy Shores")
			aopVoteSandyCount = aopVoteSandyCount + 1
		elseif string.lower(arg1) == "harmony" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Harmony")
			aopVoteHarmonyCount = aopVoteHarmonyCount + 1
		elseif string.lower(arg1) == "grapes" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Grapeseed")
			aopVoteGrapeSeedCount = aopVoteGrapeSeedCount + 1
		elseif string.lower(arg1) == "paletob" then
			TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7Paleto Bay")
			aopVotePaletoCount = aopVotePaletoCount + 1
		else
			TriggerClientEvent('chatMessage', source, "^3Command Usage: \n/vote <area> \n^1Areas: \n^7ls, state, bc, vinew, mirrorp, downt, davis, delperro, rockfordh, sandy, harmony, grapes, paletob")
		end
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

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! --
-----------------------------------------------------------
-- THE BELOW IS FOR DEBUGGING AND CHECKERS. DO NOT TOUCH --
--       Touching the below results in NO support!       --
-----------------------------------------------------------

RegisterCommand("aopstatus", function(source, args, rawCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "Current AOP: " .. FaxCurAOP)
	TriggerClientEvent("Fax:ClientPrint", source, "AOP Command: " .. AOPCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "PT Command: " .. PTCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "AOP Vote Command: " .. AOPVoteCommand)
	TriggerClientEvent("Fax:ClientPrint", source, "Feat Color: " .. featColor)
	TriggerClientEvent("Fax:ClientPrint", source, "Auto Change AOP: " .. tostring(autoChangeAOP))
	TriggerClientEvent("Fax:ClientPrint", source, "Using Permissions: " .. tostring(usingPerms))
	TriggerClientEvent("Fax:ClientPrint", source, "Peacetime Func Enabled: " .. tostring(peacetime))
	TriggerClientEvent("Fax:ClientPrint", source, "Vote Func Enabled: " .. tostring(vote))
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