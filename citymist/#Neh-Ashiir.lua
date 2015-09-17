function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 1681})) then
		if(e.other:GetCharacterFactionLevel(342) >= 900) then
			e.self:Say("Nothing is left to hide now. You shall have the truth. But truth is not won easily and if you cannot defeat me, you have not the ability to see that vengeance is served. Brace yourself!");
			e.other:Faction(342,100);
			e.other:QuestReward(e.self,0,0,0,0,0,5000);
			eq.spawn2(90012,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
			eq.depop()
		else
			e.self:Say("You need to prove your dedication to our cause before I can discuss such matters with you.");
			e.other:SummonItem(1681);
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
