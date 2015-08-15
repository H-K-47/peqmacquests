--Rogue Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("performs a deep, sweeping bow in a graceful and almost flamboyant display of greetings. 'Welcome, welcome to the district of Selia, my friend. I am Assassin Rysarieul -- even the light needs its agents who walk the shadows. We lend an ear to its whispered secrets and an eye to the evils that it harbors. We are essential in this battle against the infectious corruption that threatens every corner of existence, for only we can learn of its secrets. In Selia, however, I serve as an advisor and observer more so than an active agent. The passing of time has finally taken its toll upon me -- though my people timeless in their natural long life, we do eventually grow old and wary. This is not to say that because the blade has left my hand and my feet too weak to tread upon the shards of darkness that I have abandoned my cause. I serve the cause of light still, though as a mentor to the young scouts and agents of this era of turmoil and chaos.'");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
