function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Ahoy there. [sailor]!");
	elseif(e.message:findi("not a sailor")) then
		e.self:Say("What do you mean?! After all that time you spent sailing to Erudin, you have to be a sailor by now!");
	end
end

function event_signal(e)
	e.self:Say("Ha! The closest you will get to tonic is in the library. That's assuming you know how to spell tonic. Bwaha ha! When you see the bookworm give her a KISS for me! HAHA!!");
	eq.signal(24067,51);
end

-- END of FILE Zone:erudnext  ID:98037 -- Phloatin_Highbrow