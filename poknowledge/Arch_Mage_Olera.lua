--Arch_Mage_Olera.pl
--Planar Armor Exchange/Magician Tomes

function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("gives an almost unearthly graceful gesture in warm welcoming of " .. e.other:GetName() .. ". 'May the light of honor, valor, and untainted passion guide you through the dark turmoil of this dreaded era. I am very pleased to see you before us, friend, for the children of the light must all come together in this dark hour of Norrath and the universe's fate. If you have need of guidance in the ways of the elements, then what humble knowledge I have is at your disposal, my friend.'");
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
