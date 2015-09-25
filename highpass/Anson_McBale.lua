function event_say(e)
	if(e.other:GetFaction(e.self) <= 5) then
		if(e.message:findi("hail")) then
			e.self:Emote("looks at you suspiciously. 'Yeah? Whacha want?'");
		elseif(e.message:findi("see stanos")  and  e.other:GetLevel() >= 50) then
			e.self:Say("This better be important.");
			eq.spawn2(5088,0,0,336,10,45,225);
		end
	else
		e.self:Say("Go away! We don't have time for the likes of you.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(e.other:GetLevel() >= 46 and e.other:GetFaction(e.self) <= 5) then
		if(item_lib.check_turn_in(e.self, e.trade, {item1 = 28014})) then
			e.self:Say("Oh, I see.");
			eq.spawn2(5088,0,0,336,10,45,225);
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
