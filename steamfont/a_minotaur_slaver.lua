--NPC: a_minotaur_slaver   Zone: steamfont

function event_death_complete(e)
	ran = math.random(100);
	if(ran > 98) then
		eq.unique_spawn(56152,0,0,-1294,1360,-103);
	elseif(ran < 5) then
		eq.unique_spawn(56161,0,0,-2179,1319,-101.2,0);
	end
	e.self:Say("I die soon! Meldrath, help me!");
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
