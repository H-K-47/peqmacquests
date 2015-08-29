function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail! Beware of the [goblin raiders] roaming the plains outside of Firiona Vie. They ahve caused much trouble and continue to assault this outpost.");
	elseif(e.message:findi("goblin raider")) then
		e.self:Say("The goblin raiders have been quite a nuisance to my trackers. I implore you to aid my men and lessen teh presence of the vile beasts. Bring me proof that you ahve taken at least four of these raiders down. You shall earn the respect of this outpost and insure your own well-being.");
	elseif(e.message:findi("goblin battlemaster")) then
		if(e.other:GetFaction(e.self) > 4) then
			e.self:Say("I cannot trust you full. When you have performed more deeds in the name of the Union of Vie, then and only then shall I trust you.");
		else
			e.self:Say("The goblin battlemasters are formidable fighters.  They have defeated many of the patrols I sent into the plains.  Bring me proof of four of these fallen goblins and I shall reward you with a piece of Faydark ringmail armor.");
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
	elseif(e.other:GetFaction(e.self) < 5) then
		if(item_lib.check_turn_in(e.self, e.trade, {item1 = 12923,item2 = 12923,item3 = 12923,item4 = 12923})) then
			e.self:Say("Good work! Please accept this piece of armor. It was crafted in Felwithe for the swiftly moving rangers of this outpost.");
			e.other:Faction(418,5);
			e.other:Faction(92,3);
			e.other:Faction(314,3);
			e.other:Faction(193,-1);
			e.other:Faction(250,-1);
			e.other:QuestReward(e.self,0,8,0,0,eq.ChooseRandom(12924,12925,12926,12927,12928,12929,12930,12931,12932,12933),5000);
		end
		item_lib.return_items(e.self, e.other, e.trade)
	end
	item_lib.return_items(e.self, e.other, e.trade)
end