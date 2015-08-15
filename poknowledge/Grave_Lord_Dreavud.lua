--Shadow Knight Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("peels back the upper right portion of his thin lips, giving a dark sneer of his gruesome features and horrific maw. 'You do not belong here! Return to Selia, where the light thrives. The shadow would embrace you, should you let it, but you are here for some righteous cause - one to destroy the shadow or learn of its secrets. You will find no success here, you pathetic little light crawler. Remain here and ignore my warning, and you will condemn yourself to consumption by the shadow should you further pursue its interests.'");
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
