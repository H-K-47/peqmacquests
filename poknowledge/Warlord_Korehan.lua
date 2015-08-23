--Warrior Tomes/Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("stands tall and in a stiff, well-trained mode, salutes " .. e.other:GetName() .. ". 'Welcome to the district of Selia. 'ere, ye will find that we all be children of light -- that virtues such as valor and justice are 'eld in the utmost respect and fervent reverence. Dinnae be fooled by our appearance, friend, fer we may differ in religions, but our focus be paralleled. If ye be a young warrior searchin' fer a mentor in the skills of the blade, then ye certaintly 'ave come t'the right man. If ye be of another art, then dinnae be discouraged, fer Selia 'olds many adepts and ye shall find one to suit ye in our midst.'");
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
