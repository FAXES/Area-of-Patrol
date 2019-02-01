----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------
version = "2.6" -- Avoid changing this!

--- CONFIG AREA ---

FaxCurAOP = "None Set"  -- Default AOP for when the script starts

vote = true				-- Enables the vote command for AOP
peacetime = true		-- Enables the peacetime command for AOP

usingPerms = true       -- Toggles ACE permission use. For no command permissions set to false

peacetimeNS = true      -- Enables no shooting when peacetime is active

AOPLocation = 0         -- 0 = Default, 1 = bottom center, 2 = bottom right, 3 = top right, 4 = top center, 5 = top left, 6 = custom setting (x, y)
                        -- NOTE! 2 & 3 are not set up and will display as the default!

serverPLD = false       -- Server-side PLD installed? Only set to TRUE if using the default AOPLocation above (0)

localTime = true        -- If true it will get your time. If false it will get the in-game time

-- Only change these if AOPLocation = 6 (Custom Setting):
AOPx = 0.660
AOPy = 1.430

maxPTSpeed = 100 -- Max Speed people can go during peacetime before getting a message (in mph)

--- NEW!!! ADDED IN 2.6 ---
AOPCommand = "aop" -- Command for to set AOP
PTCommand = "pt" -- Command to toggle peacetime
AOPVoteCommand = "aopvote" -- Command to start AOP vote

autoChangeAOP = true -- Would you like the AOP to change based on the amount of players? If true, see settings below!

ACAOPUnder5 = "Paleto Bay" -- AOP Auto-set if there is under 5 players
ACAOPUnder10 = "Sandy Shores" -- AOP Auto-set if there is under 10 players
ACAOPUnder20 = "Blaine County" -- AOP Auto-set if there is under 20 players
ACAOPUnder30 = "Los Santos" -- AOP Auto-set if there is under 30 players
ACAOPOver30 = "San Andreas" -- AOP Auto-set if there is over 30 players

PTOnMessage = " \n —————————————————————— \n PEACE TIME IS NOW IN EFFECT \n This Means No Priority Calls.  \n ——————————————————————" -- Message displayed when peacetime is turned ON
PTOffMessage = "\n —————————————————————— \n PEACE TIME IS NO LONGER IN EFFECT \n Resume Normal RP.  \n ——————————————————————" -- Message displayed when peacetime is turned OFF
SecondaryMessageAOP = "Please Finish Your Current RP and Move." -- Message displayed on 2nd line of new AOP announcement


--[[
    The default settings can be found on the forums post!
]]