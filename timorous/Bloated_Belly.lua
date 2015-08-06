function event_spawn(e)
	local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.
	local hour = zone_time["zone_hour"] + 1;
	local minute = zone_time["zone_minute"];
	eq.debug("Boat spawned! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
end

function event_waypoint_arrive(e)
	local zone_time = eq.get_zone_time(); -- Time here is off by 1, so 6AM = 5.
	local hour = zone_time["zone_hour"] + 1;
	local minute = zone_time["zone_minute"];
	if(e.wp == 39) then
		eq.debug("Boat to overthere (15) has reached the docks. Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
	elseif(e.wp == 64) then
		eq.debug("Boat to overthere (15) has reached its destination! Name is: " .. e.self:GetName() .. " Time is: " .. hour ..":" .. minute .. "", 1);
		eq.get_entity_list():ForeachClient(
			function(ent)
				ent:MovePC(93,1589,4846,-161, 0);
			end,
			function(ent)
				if(ent:GetBoatID() == 839) then
					return true;
				end
				return false;
			end
		);
	end
end