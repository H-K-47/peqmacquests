function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Grab a pole and start fishing. You never know what you will catch. Rohan is offering a reward for some fish. Dead or alive!");
	end
end