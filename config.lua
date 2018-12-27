----------------------------------
-- Area of Patrol, Made by FAXES--
----------------------------------

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

--[[
    The default settings can be found on the forums post!
]]