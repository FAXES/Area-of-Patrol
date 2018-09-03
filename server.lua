----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

--- CONFIG AREA ---
vote = true				-- Enables the vote command for AOP
peacetime = true		-- Enables the peacetime commands for AOP

--- CODE SPACE DON'T TOUCH ---

FaxCurAOP = "None"
FaxCurAOP2 = "Set"
Faxvotestatus = false
FaxCurPT = false

RegisterServerEvent('SetMap')
AddEventHandler('SetMap', function()
	Wait(15000)
	SetMapName("RP : Not Set")
end)

TriggerEvent("SetMap")

AddEventHandler('chatMessage', function(source, name, msg)
	local args = stringsplit(msg, " ")
	if args[1] == "/aop" then
		if IsPlayerAceAllowed(source, "faxes.aopcmds") then
			if tablelength(args) > 2 then
			CancelEvent()
			FaxCurAOP = args[2]
			FaxCurAOP2 = args[3]
			TriggerEvent('AOP:Sync')
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : " .. FaxCurAOP .. " " .. FaxCurAOP2 .. " \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : " .. FaxCurAOP .. " " .. FaxCurAOP2)
			else
				TriggerClientEvent("chatMessage", source, "Invalid Input, Use 2 Words (Eg; Sandy Shores)")
			end
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
	end
end)


RegisterServerEvent('AOP:Sync')
AddEventHandler('AOP:Sync', function()
	TriggerClientEvent('AOP:SendAOP', -1, FaxCurAOP, FaxCurAOP2)
end)

RegisterCommand("pt", function(source, args, rawCommand)
	if IsPlayerAceAllowed(source, "faxes.aopcmds") then
		if FaxCurPT == false then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————", {239, 0, 0})
			FaxCurPT = true
			TriggerEvent('AOP:PTSync')
		elseif FaxCurPT == true then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————", {239, 0, 0})
			FaxCurPT = false
			TriggerEvent('AOP:PTSync')
		end
	else
		TriggerClientEvent('AOP:NoPerms', source)
	end
end)

RegisterServerEvent('AOP:PTSync')
AddEventHandler('AOP:PTSync', function()
	TriggerClientEvent('AOP:SendPT', -1, FaxCurPT)
end)

AddEventHandler('chatMessage', function(source, name, msg)
	-- AOP Command for Vote
	RegisterCommand("aopvote", function()
		if vote == true then
			if IsPlayerAceAllowed(source, "faxes.aopcmds") then
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
end)

AddEventHandler('chatMessage', function(source, name, msg)
	-- Vote Types
	sm = stringsplit(msg, " ");
	if sm[1] == "/vote" then
		if Faxvotestatus == true then
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

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end