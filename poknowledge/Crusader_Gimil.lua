--Paladin Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("kneels low before " .. e.other:GetName() .. ", offering a humble gesture of respect and greetings. 'The light of Selia embraces thee, my friend. If you reside in our midst in searching for knowledge and guidance, then know that we are your servants in that quest. Should you be a paladin, and your object of faith is of no consequence in this matter, then my services are humbly at your disposal should you need or wish them.'");
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
