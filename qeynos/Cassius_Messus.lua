function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail!  What do think of [Lisera]?  She aint' much to look at, but soon she will be singing again.");
	elseif(e.message:findi("Lisera")) then
		e.self:Say("Lisera is my lute.  She sounds horrible.  I need to get her tuned by a master tuner, but the League's Master Tuner is in the Plains of Karana for a while.  If only..  hey!!  You look like a fellow bard...  You [interested in the job]?");
	elseif(e.message:findi("interested in the job")) then
		e.self:Say("Great!!  Here.  Take Lisera to Vhalen Nostrolo.  He is in the plains near the well, composing.  He must tune it for me.  Be very careful! Lisera is all I've got.  If you complete this task and return with good news. I shall be glad to pass along an extra songsheet for a tune entitled 'Hymn of Restoration.");
		e.other:SummonItem(13114); -- Lisera Lute
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade,{item1 = 18803})) then
		e.self:Say("Thank you! I am in your debt. Here is the songsheet as I promised. I shall sing of you one day.");
		e.other:Faction(192,10,0); -- League of Antonican Bards
		e.other:Faction(184,1,0); -- Knights of Truth
		e.other:Faction(135,1,0); -- Guards of Qeynos
		e.other:Faction(273,-1,0); -- Ring of scale
		e.other:Faction(53,-1,0); -- Mayong Mistmoore
		e.other:QuestReward(e.self,0,6,6,0,15007,100); -- Song: Hymn of Restoration
	end  
	item_lib.return_items(e.self, e.other, e.trade, e.text)
end
