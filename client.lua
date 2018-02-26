-- Made by FAXES
RegisterNetEvent('AOPList')
AddEventHandler('AOPList', function()
	TriggerEvent("chatMessage", "AOP Script", {255, 0, 0}, "^6Blaine County [/aopbc], ^8State Wide [/aopstate], ^6Los Santos [/aopls], ^8Vinewood [/aopvw], ^6Pillbox Hill / Downtown [aopdt], ^8Davis [/aopdavis], ^6Del Perro [/aopdp], ^8Rockford Hills [/aoprh], ^6Sandy Shores [/aopsandy], ^8Harmony [/aopharm], ^6GrapeSeed [/aopgrape], ^8Paleto Bay [/aoppb], ^4Peace Time On [/pton], Peace Time Off [/ptoff], ^3RP Area Vote [/aopvote]")
--		^->^ Edit the list if you wish            ^This sets the color                            ^List
	end)
--
-- This code has been left here for a further date. Don't un comment it as the code is wrong and won't work.
--
--RegisterNetEvent('AOPBC')
--AddEventHandler('AOPBC', function()
--	TriggerEvent("chatMessage", -1, " \n —————————————————————— \n RP AREA IS NOW : BLAINE COUNTY \n Please Finish Your Current RP and Move. \n ——————————————————————", {239, 0, 0}, " ")
--	TriggerClientEvent("chat:addMessage", -1, { args = { "", "Test Message"} })
--end)