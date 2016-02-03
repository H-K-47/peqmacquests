function event_say(e)
	if(e.message:findi("hail")) then	
		if(e.other:GetFaction(e.self) < 4) then
			e.self:Say("Greetings, merry gentlefolk! If you enjoy the music, please feel free to cross my palm with gold.");
		else
			e.self:Say("Oh look, a talking lump of refuse. How novel!")
		end
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {gold = 2})) then
		e.self:Say("Rat spittle! Busted another string! You seem like a good music loving citizen, could you please run to the Wind Spirit's Song and grab me a fresh set of lute strings?");
		e.other:Ding();
		e.other:Faction(192, 2,0); -- confirmed live factions
		e.other:Faction(184, 1,0);
		e.other:Faction(135, 1,0);
		e.other:Faction(273, -1,0);
		e.other:Faction(207, -1,0);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13709})) then -- Lute Strings
		e.self:Say("'Many thanks, merry gentlefolk! Let me cross your palm in gratitude for your kindness. Hmmmm where did my lucky coin go?");
		
		if(math.random(3) == 3) then -- you only get the coin sometimes
			e.other:SummonItem(13710); -- Etched Silver Coin
		end
		e.other:Ding();
		e.other:Faction(192, 2,0); -- confirmed live factions
		e.other:Faction(184, 1,0);
		e.other:Faction(135, 1,0);
		e.other:Faction(273, -1,0);
		e.other:Faction(207, -1,0);
		e.other:AddEXP(5000);
		e.other:GiveCash(0,math.random(20),math.random(10),1);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13710})) then -- Etched Silver Coin
		e.self:Say("'My lucky coin! How did it get in there? Well, never mind that. You are an honest person and although honesty is its own reward, I feel obligated to return the favor. Take this to Dionna if you enjoy music. Farewell friend!");
		e.other:SummonItem(13708); -- Note From Fabian
		e.other:Ding();
		e.other:Faction(192, 5,0);
		e.other:Faction(184, 5,0);
		e.other:Faction(135, 5,0);
		e.other:Faction(273, -5,0);
		e.other:Faction(207, -5,0);
		e.other:AddEXP(5000);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end