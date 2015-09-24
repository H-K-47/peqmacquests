local counting;

function event_spawn(e)
	eq.set_timer("combat",20000);
	counting = 0;
end

function event_timer(e)
	if (e.timer == "combat") then
		counting = counting + 1;
	end
	if(counting == 2) then
		eq.attack_npc_type(105004);
	elseif(counting == 3) then
		eq.unique_spawn(105182,0,0,e.self:GetX(),e.self:GetY(),e.self:GetZ(),e.self:GetHeading());
		eq.depop(105004);
		eq.depop();
	end
end
