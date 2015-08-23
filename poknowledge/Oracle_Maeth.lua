--Planar Armor Exchange
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("makes a sweeping motion with his arms in an almost ritualistic fashion of greetings known only to those of the shamanistic world. 'We welcome you, friend, to the Tanaan district of the Plane of Knowledge. Beyond a seemingly endless fount of tangible supplies, the adepts of Jeral have come together and offered to retake our former duties as guildmasters and mentors to those of our art. In my life before New Tanaan's embrace of me, I served as one of many shamans of the Northmen, before Halas' walls were secured in the turmoil of the frozen north. As the years passed and years fell way to decades, I ascended to hold the seat of guild master of my order and have mentored countless shamans in my day. If you are in need of such knowledge, then please, do not hesitate in acquiring my aid.'");
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
