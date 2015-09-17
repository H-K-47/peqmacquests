function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 1671})) then --Part of Shaman Epic 1.0
		if(e.other:GetCharacterFactionLevel(342) >= 800) then
			e.self:Emote("looks down at the icon in his hands for a long moment before speaking. 'Why did you bring me this? Are you here to accuse me of the queen's death?' High Scale Kirn chuckles venomously and continues, 'I am High Scale and beyond your petty laws. However, I wish the truth to be known. On my hand is a ring. If you can take it from me, show it to the queen and she will remember. However, I will not give up the ring easily. Defend yourself!");
			e.other:Faction(342,100);
			e.other:QuestReward(e.self,0,0,0,0,0,100000);
			eq.spawn2(39083,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading()):AddToHateList(e.other,1);
			eq.depop_with_timer();
		else
			e.self:Say("You need to prove your dedication to our cause before I can discuss such matters with you.");
			e.other:SummonItem(1671);
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--Submitted by: Jim Mills
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
