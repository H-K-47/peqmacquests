function event_say(e)
	if(e.message:findi("hail")) then
		-- confirmed live faction 
		e.other:Faction(320,-50,0);
	elseif(e.message:findi("solusek ro")) then
		e.self:Say("Solusek Ro is the Master of Fire and the Keeper of Power.");
	end
end