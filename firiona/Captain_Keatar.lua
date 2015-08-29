function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail! Beware of the [goblin raiders] roaming the plains outside of Firiona Vie. They ahve caused much trouble and continue to assault this outpost.");
	elseif(e.message:findi("goblin raider")) then
		e.self:Say("The goblin raiders have been quite a nuisance to my trackers. I implore you to aid my men and lessen teh presence of the vile beasts. Bring me proof that you ahve taken at least four of these raiders down. You shall earn the respect of this outpost and insure your own well-being.");
	elseif(e.message:findi("goblin battlemaster")) then
		if(e.other:GetFaction(e.self) > 4) then
			e.self:Say("I cannot trust you full. When you have performed more deeds in the name of the Union of Vie, then and only then shall I trust you.");
		else
			e.self:Say("Your faction is high enough, Come back later and I might have something for you."); -- temporary until we get the text from live.
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12922,item2 = 12922,item3 = 12922,item4 = 12922})) then
		e.self:Say("You serve this outpost well. Here is a small reward. You should try to hunt down [goblin battlemasters]. I have very few resources to send into the plains to track them down. Perhaps you can help us.");
		e.other:Faction(418,5);
		e.other:Faction(92,3);
		e.other:Faction(314,3);
		e.other:Faction(193,-1);
		e.other:Faction(250,-1);
		e.other:QuestReward(e.self,0,8,0,0,0,1000);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end