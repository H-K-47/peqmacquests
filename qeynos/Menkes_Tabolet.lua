function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings, fine citizen of Qeynos, what can I make for you today?  How about a genuine, handmade [rat fur cap]?  Or maybe a lovely [rat pelt cape]?  Maybe you'd like a necklace?  For a small fee. I can make a nice [snake fang necklace] or a [lucky rat's foot necklace].");
	elseif(e.message:findi("rat fur cap")) then
		e.self:Say(string.format("Rat fur cap?  You're in luck, that happens to be my specialty, %s.  Just bring me 2 pieces of rat fur and 3 gold, and I'll make one up for you while you wait.",e.other:GetName()));
	elseif(e.message:findi("rat pelt cape")) then
		e.self:Say("The rat pelt cape..  that happens to be my specialty!  I must say, it would be the perfect choice to go with that outfit you have on.  All I need are 3 rat pelts, those big ol' rats out in the hills work great for these capes, and 4 gold.  I must say, at these prices, everyone in Qeynos will be wearing one in a matter of weeks.");
	elseif(e.message:findi("snake fang necklace")) then
		e.self:Say(string.format("Hey, great choice..  the snake fang necklace just happens to be my specialty. %s!  Just bring me 3 snake fangs, and 2 gold.  With one of these around your neck, you're sure to be the center of attention down at Crow's..  or anywhere else you fill your mug.",e.other:GetName()));
	elseif(e.message:findi("lucky rat")) then
		e.self:Say("Now that is exactly what you need my friend, a lucky rat's foot necklace..  and, it just happens to be my specialty!  Just bring me one rat's foot, some rat whiskers, and I won't even charge you any gold. Just buy me a honey mead, and you'll be the luckiest rat dodger this side of Highpass.");
	end
end

function event_waypoint_arrive(e)
	if(e.wp == 6) then
		e.self:Say("Get your rat fur caps here! Get your snakes fang necklaces here! Special discount prices.. this week only.");
	elseif(e.wp == 9) then
		e.self:Say("Custom made rat pelt capes.. cheap, cheap, cheap!");
	elseif(e.wp == 12) then
		e.self:Say("Feeling a bit unlucky lately? Gnoll pups always picking on you? Fire beetles attacking you whenyou aren't looking? what you need is a lucky rat's foot necklace! Satisfaction guaranteed!");
	elseif(e.wp == 17) then
		e.self:Say("Get your rat fur caps here! Get your snake fang necklaces here! Special discount prices.. This week only.");		
	elseif(e.wp == 23) then
		e.self:Say("Feeling a bit unlucky lately? Gnoll pups always picking on you? Fire beetles attacking you whenyou aren't looking? what you need is a lucky rat's foot necklace! Satisfaction guaranteed!");		
	elseif(e.wp == 27) then
		e.self:Say("Menkes' discount fashions and jewelry, now open for business.. custom made hats, to fit any size head.");
	end
	
end

function event_trade(e)
	local item_lib =require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13064,item2 = 13064, gold = 3})) then
		e.self:Say("Hey. look at this. some of my best work, if I do say so myself. Enjoy, and tell your friends");
		e.other:Faction(434,2); -- Qeynos Citizen
		e.other:QuestReward(e.self,0,0,0,0,1050,200);  -- rat fur cap
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13054,item2 = 13054,item3 = 13054,gold = 4})) then
		e.self:Say("This cape turned out great. It'll sure help keep you warm on those cold and stormy nights out in the Karanas.");
		e.other:Faction(434,5); -- Qeynos Citizen
		e.other:QuestReward(e.self,0,0,0,0,1051,200); -- rat pelt cloak
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13067,item2 = 13067,item3 = 13067,gold = 2})) then
		e.self:Say("Hey, hey.. with this little baby, you will be the talk of the town tonight!");
		e.other:Faction(434,5); -- Qeynos Citizen
		e.other:QuestReward(e.self,0,0,0,0,1052,200); -- Snake fang necklace
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13065,item2 = 13071,item3 = 13033})) then
		e.self:Say("Now this here has got to be one of my best works.. I dare you to find someone who can make a higher quality necklace than this one! Enjoy, my good friend!");
		e.other:Faction(434,5); -- Qeynos Citizen
		e.other:QuestReward(e.self,0,0,0,0,1053,200); -- rat's foot necklace
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
