function event_say(e)
		
	if(e.message:findi("tax")) then -- triggers without starting quest
		e.self:Say("Taxes? How can I afford more taxes? You tax us poor merchants right out of Qeynos. Freeport is looking better and better every day.");
		e.other:SummonItem(13175);
		e.other:Faction(217,-1,0);
	end
	
end
