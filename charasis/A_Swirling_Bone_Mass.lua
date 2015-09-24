function event_spawn(e)
	eq.set_timer("depop",150000);
end

function event_timer(e)
	eq.unique_spawn(105021,0,0,-5,-670,8,64);
	eq.unique_spawn(105004,0,0,5,-670,8,192);
	eq.depop();
end
