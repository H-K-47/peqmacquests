function event_say(e)
	if(e.message:findi("hail")) then
			e.self:Say("Hail, " .. e.other:GetName() .. ". Pyzjn is working for Master Varsoon. If Pyzjn do good work maybe Master Varsoon tell Master Bruax he is worthy. Pyzjn must go now. All glory to the Plaguebringe! May you die a painful, oozing death.");	
	end
end

function event_combat(e)
  if(e.joined == true) then
    e.self:Say("Hmm. You offend Pyzjin. Your death come soon. Hail, Bertoxxulous!");
  end
end