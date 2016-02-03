function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("What? Who the heck are you and how do you know my name?! Never mind... Just leave me alone!");	
	end
end