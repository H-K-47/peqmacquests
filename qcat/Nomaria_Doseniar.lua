function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Welcome! It is good to see our disciples can still outsmart the guards of Qeynos and make it to the Shrine of Bertoxxulous. Our ranks are best filled with disciples such as yourself. We have need of you. Do you wish to serve the Lord of Disease or not?");
	elseif(e.message:findi("serve the lord of disease")) then
		e.self:Say("Aye! That is good. Of late, we have heard news of a message that will be sent to the Treefolk of the Jaggedpine. Antonius Bayle will send word to the Jaggedpine that certain requests will be met. We must intercept this message. That is all you need to know. Go and find Antonius Bayle's messenger, Gharin, He should have the message. Get it by any means necessary and return it to me. Go now!");
	elseif(e.message:findi("or not")) then
		e.self:Say("We are not in the business of providing safe haven for cowards. Begone, and may your courage be found amongst the dead!");	
	end
end

function event_trade(e)
	local item_lib =require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18807})) then -- Sealed Letter [Note To Jaggedpine - real]
		e.self:Say("Good work, child of the plague. Now take this forged note to Te'Anara of the Jaggedpine Treefolk. Be sure to watch your back, now. The guards of Qeynos surely know who you are by now. They will not stop to ask questions.");
		e.other:SummonItem(18806); -- Sealed Letter [Note To Jaggedpine - fake]
		e.other:Ding();
		-- confirmed live factions
		e.other:Faction(21,50); -- Bloodsabers
		e.other:Faction(135,-7); -- Guards of Qeynos
		e.other:Faction(235,5); -- Opal Dark Briar
		e.other:Faction(257,-12); -- Priest of Life
		e.other:Faction(53,2); -- Corrupt Qeynos Guards
		e.other:GiveCash(0,math.random(5),0,0);
		e.other:AddEXP(100);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end	

--END of FILE Zone:qcat  ID:45087 -- Nomaria_Doseniar
-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------