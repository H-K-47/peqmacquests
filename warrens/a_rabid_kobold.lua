function event_death_complete(e)
	local spawna = eq.spawn2(101006,0,0,-866,713,-33,260);
	local spawnb = eq.spawn2(101006,0,0,-473,577,-74,200);
	local spawnc = eq.spawn2(101006,0,0,-1019,506,-78,60);
	
	if(math.random(100) < 5) then
		RandomSpawn = eq.ChooseRandom(spawna,spawnb,spawnc);
	end
end