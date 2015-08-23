--Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("bows deeply in respect to " .. e.other:GetName() .. ". 'Good day to you and welcome to the Tanaan district of the Plane of Knowledge. The citizens of Tanaan are beings of neutrality and we strive to uphold our ways without the interference of the zealous. Do not take offense to this, my friend, for we view the same toward all sides of the coin who are extreme - those of extreme light and darkness alike are viewed warily. If you feel that our ways are not suitable for your cause in this city, then seek the district of Selia where the zealots of the light dwell respectfully without the interference of the other city�s districts. However, if you are able to yield your heart to our wishes only temporarily while in our midst, then we embrace you most warmly. The knowledge and supplies created by our adepts and craftsmen are at your disposal should you have a need of them.'");
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
