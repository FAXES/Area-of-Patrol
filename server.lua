----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

cooldown = 0
Faxvotestatus = false
FaxCurPT = false

RegisterServerEvent('AOP:Startup')
AddEventHandler('AOP:Startup', function()
	print("--- AOP Script Started ---")
	Wait(3000)
	TriggerClientEvent("AOP:RunConfig", -1)
	TriggerClientEvent("AOP:JoinMsg", -1)
	Wait(30000)
	SetMapName("RP : " .. FaxCurAOP)
end)

TriggerEvent("AOP:Startup")

RegisterCommand("aop", function(source, args, raw)
	if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
		FaxCurAOP = table.concat(args, " ")
		if(source == 0)then;print("AOP changed to: " .. FaxCurAOP);end
		TriggerEvent("AOP:Sync")
		TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ".. FaxCurAOP .." \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
		SetMapName("RP : " .. FaxCurAOP)
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)


RegisterServerEvent('AOP:Sync')
AddEventHandler('AOP:Sync', function()
	TriggerClientEvent('AOP:SendAOP', -1, FaxCurAOP)
end)

RegisterCommand("pt", function(source, args, rawCommand)
	if peacetime then
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
			if(source == 0)then;print("Peacetime toggled");end
			if not FaxCurPT then
				TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————", {239, 0, 0})
				TriggerClientEvent("AOP:PTSound", -1)
				FaxCurPT = true
				TriggerEvent('AOP:PTSync')
			elseif FaxCurPT then
				TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————", {239, 0, 0})
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
RegisterCommand("aopvote", function(source, args, rawCommand)
	if vote then
		if source == 0 or IsPlayerAceAllowed(source, "faxes.aopcmds") or not usingPerms then
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

AddEventHandler('chatMessage', function(source, name, msg)
	-- Vote Types
	sm = stringsplit(msg, " ");
	if sm[1] == "/vote" then
		if Faxvotestatus then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "^5" .. name .. " ^4Has Voted For: ^7" .. string.sub(msg,6))
		else
			TriggerClientEvent('AOP:NoVote', source)
		end
	end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

-- function tablelength(T)
--   local count = 0
--   for _ in pairs(T) do count = count + 1 end
--   return count
-- end