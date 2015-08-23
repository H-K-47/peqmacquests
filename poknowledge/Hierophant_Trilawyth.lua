--Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("gives a gentle bow of his head in respect toward " .. e.other:GetName() .. ". 'The district of Tanaan welcomes you, traveler. The adepts of the city have come together collectively and as individuals in hopes of aiding our visitors as we are able. In my time upon Norrath, I served as a child of nature dedicated to Tunare, the Mother of All. Though my faith has not wavered and my philosophies of nature have only grown in this astral city, I am able to train any druid who is in need of gaining a better grasp upon their skills. Mind you, however, that I am not a preacher and will not guide you through the instruction of faith or spell, for it is these things you must acquire and perfect through your own trials.'");
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
