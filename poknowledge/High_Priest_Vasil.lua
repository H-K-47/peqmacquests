--Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("closes his eyes and gives a deep, formal bow before " .. e.other:GetName() .. ". 'Welcome to Jeral, friend. I am Vasil, High Priest of Brell Serillis and resident master of the clerical arts in the district of Tanaan. If you have come in search of a mentor to guide you through the skills of your priesthood, then do not be discouraged by my own declaration of faith should it differ from yours. I cannot teach you how to know and be close to your deity in life, for only you may know that individually, but I can impart to you the fundamental basics that every priest, despite the object of their undying faith and devotion, wields in their life of service.'");
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
