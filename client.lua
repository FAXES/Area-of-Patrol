-- Made by FAXES
RegisterNetEvent('AOP:List')
AddEventHandler('AOP:List', function()
	TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "Blaine County [/aopbc], State Wide [/aopstate], Los Santos [/aopls], Vinewood [/aopvw], Mirror Park [/aopmp] Pillbox Hill / Downtown [aopdt], Davis [/aopdavis], Del Perro [/aopdp], Rockford Hills [/aoprh], Sandy Shores [/aopsandy], Harmony [/aopharm], GrapeSeed [/aopgrape], Paleto Bay [/aoppb], ^4Peace Time On [/pton], Peace Time Off [/ptoff], ^3RP Area Vote [/aopvote]")
	end)
	
RegisterNetEvent('AOP:NoPerms')
AddEventHandler('AOP:NoPerms', function()
	TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "Insignificant Permissions to run command.")
	end)
-- Made by FAXES