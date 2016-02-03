function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Gree.. .. tings. How are you? Don't get too close to me. I have come down with something bad.");	
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13954})) then
		e.self:Say("Thank you!! I felt the madness nearing my brain, but now I feel much better. Please take this as thanks - it is all I have to donate to Astaed Wemor. Be sure he gets it. I shall thank Rodcet Nife every day for sending help.");
		e.other:SummonItem(13970);
		e.other:Ding();
		e.other:Faction(257,1,0); -- confirmed live factions
		e.other:Faction(183,1,0);
		e.other:Faction(135,1,0);
		e.other:Faction(21,-1,0);
		e.other:Faction(9,1,0);
		e.other:AddEXP(1000);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
