----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

--- CONFIG AREA ---
vote = true				-- Enables the vote command for AOP
peacetime = true		-- Enables the peacetime commands for AOP

--- CODE SPACE DON'T TOUCH ---
AddEventHandler('onResourceStart', function(resource)
	Citizen.Wait(15000)
	SetMapName("RP : Not Set")
	CancelEvent()
end)

AddEventHandler('chatMessage', function(source, playerName, message)
	-- AOP Command for displaying the AOP commands list
	RegisterCommand("aoplist", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent('AOP:List', source)
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)

	-- AOP Command for Blaine County
  	RegisterCommand("aopbc", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : BLAINE COUNTY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Blaine County")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)

	-- AOP Command for State Wide
  	RegisterCommand("aopstate", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : STATEWIDE \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : State Wide")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Los Santos
	RegisterCommand("aopls", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : LOS SANTOS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Los Santos")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Vinewood
  	RegisterCommand("aopvw", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : VINEWOOD \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : VineWood")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Mirror Park
  	RegisterCommand("aopmp", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : MIRROR PARK \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Mirror Park")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Down Town
	RegisterCommand("aopdt", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DOWNTOWN LS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Downtown Los Santos")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Davis
  	RegisterCommand("aopdavis", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DAVIS / STRAWBERRY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Davis")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Del Perro
	RegisterCommand("aopdp", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : DEL PERRO \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Del Perro")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Rockford Hills
  	RegisterCommand("aoprh", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : ROCKFORD HILLS \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Rockford Hills")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Sandy
	RegisterCommand("aopsandy", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : SANDY SHORES \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Sandy Shores")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Harmony
  	RegisterCommand("aopharm", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : HARMONY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Harmony")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Grapeseed
  	RegisterCommand("aopgrape", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : GRAPESEED \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Grape Seed")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Peleto Bay
  	RegisterCommand("aoppb", function()
		if IsPlayerAceAllowed(source, "fax.cmds") then
			TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : PALETO BAY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0})
			SetMapName("RP : Paleto Bay")
		else
			TriggerClientEvent('AOP:NoPerms', source)
		end
  	end)
	-- AOP Command for Peace Time on
	RegisterCommand("pton", function()
		if peacetime == true then
			if IsPlayerAceAllowed(source, "fax.cmds") then
				TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————", {239, 0, 0})
				SetGameType("Peace Time In Effect")
			else
				TriggerClientEvent('AOP:NoPerms', source)
			end
		end
  	end)
	-- AOP Command for Peace Time off
	  RegisterCommand("ptoff", function()
		if peacetime == true then
			if IsPlayerAceAllowed(source, "fax.cmds") then
				TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————", {239, 0, 0})
				SetGameType("Freeroam")
			else
				TriggerClientEvent('AOP:NoPerms', source)
			end
		end
  	end)
	-- AOP Command for Vote
	  RegisterCommand("aopvote", function()
		if vote == true then
			if IsPlayerAceAllowed(source, "fax.cmds") then
				TriggerClientEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA VOTE \n Comment a RP area you want!  \n ——————————————————————", {239, 0, 0})
			else
				TriggerClientEvent('AOP:NoPerms', source)
			end
		end
  	end)
end)