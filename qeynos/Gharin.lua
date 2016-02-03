function event_say(e)
	if(e.other:GetFaction(e.self) > 4) then
		e.self:Say("Oh look, a talking lump of refuse.  How novel!");
	else
		if(e.message:findi("hail")) then
			e.self:Say("Good day! I see they have good stock for the future armies of Qeynos. I, myself, wish to be a soldier one day instead of doing this [job].");
		elseif(e.message:findi("job")) then
			e.self:Say("I am a [messenger] for Antonius Bayle. Not big enough to fight, but light enough to run all the way to the [Jaggedpine] tomorrow morning. I sort of wish I did not have to go. I'd rather be at the Lion's Mane.");
		elseif(e.message:findi("messenger") or e.message:findi("Jaggedpine")) then
			e.self:Say("I will be taking a private note to the head druid of the Jaggedpine Treefolk. Matter of fact, I am carrying the note right now. But enough about that, if it were not for the mission tomorrow, I could be doing something at the [Lion's Mane].");
		elseif(e.message:findi("lion's mane")) then
			e.self:Say("Ahh. The Lion's Mane. If I were there, I would be enjoying a stein of Crow's [special brew]. They are expecting their first shipment of the brew. I believe if I had a few or more of those lagers, I would be very ill. I would probably have to have someone else deliver the note for me. Still, I wish I had one of those fine brews.");
		elseif(e.message:findi("special brew")) then
			e.self:Say("Crow's special brew is one of the finest lagers anywhere. It used to be sold only at Crow's bar, but apparently Crow is allowing it into other bars. For a hefty price, too, I assume. This deal is good for decent citizens considering that the other two bars in Qeynos cater to pretty rough crowds.");
		end
	end
end

function event_trade(e)
	local item_lib =require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13799,item2 = 13799,item3 = 13799,item4 = 13799})) then
		e.self:Say("Oh! That's tasty. I guess I could handle a few more.");
		e.self:Say("Oh! That's tasty. I guess I could handle a few more.");
		e.self:Say("Oh! That's tasty. I guess I could handle a few more.");
		e.self:Say("Oohhh! My head. Stop the pub from spinning. I cannot make it to the Jaggedpine feeling like this. Please take this note to Te'Anara of the Treefolk. Here is a little silver for the favor. Thanks. Ooohhhh..");
		e.other:Ding();
		e.other:SummonItem(18807);
		e.other:Faction(135,50,0); -- confirmed live factions
		e.other:Faction(9,7,0);
		e.other:Faction(53,-7,0);
		e.other:Faction(33,-12,0);
		e.other:Faction(217,5,0);
		e.other:AddEXP(8000);
		e.other:GiveCash(0,1,0,0);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
