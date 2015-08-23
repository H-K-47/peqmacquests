--Rogue Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Emote("grins wildly at " .. e.other:GetName() .. ". An uncomfortable presence washes over you in a split moment as you catch the halfling's narrowed eyes searching every inch of your person. 'Hail, greetings, and well met, friend! I am Daran, rogue extraordinaire! Rather, I am -the- rogue, I should say. A'course I dinnae boast, my friend! Aww. . . dinnae be offended or feel inferior, but be honored that ye stand in my presence. Well, enough of the introductions then, yes? Hrm. . . what have we here? Perhaps ye be a rogue, hrm? Ye seek my infinite and unsurpassed cunning and prowess perhaps to teach ye? Well then, if it is a master of the shadows that you wish to be, then I be the man who will most assuredly make a proper rogue out of you yet.'");
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
