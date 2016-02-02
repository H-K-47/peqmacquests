function event_say(e)
  if(e.message:findi("hail")) then
    e.self:Say("Greetings, " .. e.other:GetName() .. "! Whew! I sure get parched out here on patrol. Even when it rains I can't help but build up a [thirst] defending the good people of Qeynos.");
	elseif(e.message:findi("drink") or e.message:findi("thirst")) then
		e.self:Say("Well, I have a bit of a belly sickness so the only thing I can drink is normal water.  I can't even keep down the stuff our local magicians summon and call water. If you would bring me a water flask, I would be most grateful.");	
  end
end

function event_trade(e)
  local item_lib =require("items");
  if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13006})) then
    e.self:Say("Oh, thank you so much!' Lasen brings the drink to his lips and ravenously drinks the bottle's entire contents, ' Aaaaah. Here, please take this reward for your kindness.  Also take my advice, do not go exploring beneath Qeynos unless you bring friends.  I have seen too many like you enter the aqueducts alone, never to return.");
		e.other:SendSound();
    e.other:Faction(135,1);
    e.other:Faction(9,1);
    e.other:Faction(33,-1);
    e.other:Faction(53,-1);
    e.other:Faction(217,1);
    e.other:GiveCash(math.random(5),0,0,0);
  end
  item_lib.return_items(e.self, e.other, e.trade)
end
