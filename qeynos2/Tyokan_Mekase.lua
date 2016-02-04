function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Please look around. We have many items exclusively for the members of the Temple of Life. We also have [scroll strongboxes]. If you are unsure of what an item is, feel free to ask me.");
	elseif(e.message:findi("scroll strongbox")) then
		if(e.other:GetFaction(e.self) > 5) then -- must be at least indifferent
			e.self:Say("Your mere presence disgusts me. Please remove yourself from my sight. Until you change yourself and your ways, you are unwelcome in the Temple of Life.");
		else
			e.self:Say("The scroll strongboxes are merely personal safes. Most of the members use them. I am afraid all are taken, but if you are here to remove a scroll, merely hand me your key and I shall get it for you. I handle all 20 numbered keys and [Whysia] handles all 30 and 40 numbered keys.");
		end		
	elseif(e.message:findi("whysia")) then
		e.self:Say("Whysia works the night shift here.  She is quite the night owl.");
	elseif(e.message:findi("prayer beads")) then
		e.self:Say("The prayer beads are the blessed necklaces of the Priests of Life.  The beads have a few charges of minor healing.  I recharge them for all members in  good standing.  All I need are the beads and a donation of 100 gold pieces.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(e.other:GetFaction(e.self) < 5 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13306})) then -- must be amiable
		e.self:Say("Oh, turning in your key, are you? Very well, defender of life. Here you are.");
		e.other:SummonItem(eq.ChooseRandom(15126,15126,15248));
		e.other:Ding();
	elseif(e.other:GetFaction(e.self) < 5 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13296, gold=100})) then -- must be amiable
		e.self:Say("I see your beads need to be charged. Very well, here you are. Use them and good health to you!!!");
		e.other:SummonItem(13296);
--	elseif(e.other:GetFaction(e.self) < 5 and item_lib.check_turn_in(e.self, e.trade, {item1 = 13296})) then -- must be amiable
--		e.self:Say("As instructed by High Priestess Jahnda I must ask for the beads and a donation of 100 gold coins.");
--		e.other:SummonItem(13296); -- TODO how to return prayer beats exactly as given e.g. 0 charges ?
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
