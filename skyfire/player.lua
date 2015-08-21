function event_click_door(e)
	local door_id = e.door:GetDoorID();
	if (door_id == 135) then
		if(e.self:HasItem(20884) and not e.self:HasZoneFlag(108)) then
			e.self:SetZoneFlag(108);
			eq.debug("Awarded zone flag.", 1);
		end
	end
end