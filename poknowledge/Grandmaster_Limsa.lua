--Monk Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("closes his eyes and gives a deep-seated bow before " .. e.other:GetName() .. ". 'Greetings, traveler. I am Grand Master Limsa, master of the tranquil order of the Tanaan district of the Plane of Knowledge. Monks of both Norrathian orders may approach me for guidance and knowledge through the long path of self-mastery and discipline.'");
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
