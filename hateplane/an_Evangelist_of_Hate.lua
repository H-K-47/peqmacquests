function event_spawn(e)
	eq.set_timer("spam", 1800000);
end

function event_timer(e)
	eq.signal(76383, 1);
	eq.signal(76215, 1);
	eq.signal(76021, 1);
	eq.signal(76346, 1);
	eq.signal(76087, 1);
end
