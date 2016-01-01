function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hi there, " .. e.other:GetName() .. "! The Mistress, Gala the Curious, has sent me to reward you for your hard work and more importantly for entertaining her so well. She has placed [coins] on several beings of the old world.");
	elseif(e.message:findi("coin")) then
		e.self:Say("Yes! Coins of Gala. If you find one, please give it to me for a chance at some treasure. There are many different items in my bag. Who knows what you'll get?");
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 1264}, 0)) then
		e.self:Say("Well done! The mistress, Gala the Curious, is pleased with your efforts.");
		if(math.random(1,100) < 5) then
			reward = 1266;
		else
			reward = eq.ChooseRandom(14007,14010,14014,14436,14437,14438,14445,14446,14449,14450,14451,14455,14456);
		end
		e.other:QuestReward(e.self,0,0,0,0,reward);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end