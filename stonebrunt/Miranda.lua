function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("I'm not supposed to talk to strangers but if my parents let you in here I guess it's ok. Do you like [candy]? I could give you some candy to play a game with me but my [dice] are gone now.");
	elseif(e.message:findi("candy")) then
		e.self:Say("Khonza Ayssla went away one time and came back with chocolate covered cherries and pixie powder cinnesticks for my sister and I. I like the chocolates the best.");
	elseif(e.message:findi("dice")) then
		e.self:Say("I had my dice in a little bag and lost it outside the walls of the village. I think the kobolds must have found it.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 19992}, 0)) then
		e.self:Emote("claps her hands with excitement 'Chocolate cherries! My favorite! Here try some of this!'");
		e.other:Faction(172,1);
		e.other:Faction(247,1);
		e.other:QuestReward(e.self,0,0,0,0,20115,1000);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 2088}, 0)) then
		e.self:Say("You found my dice!!! Thank you " .. e.other:GetName() .. "!!");
		e.other:Faction(172,2);
		e.other:Faction(247,1);
		e.other:QuestReward(e.self,0,0,0,0,20116,1000);	
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
