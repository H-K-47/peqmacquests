--Shaman Skull Quest 8
function event_trade(e)
	local item_lib = require("items");

	if(e.other:HasItem(5148)) then
		if(item_lib.check_turn_in(e.self, e.trade, {item1 = 30994})) then --Iksar Relics
			eq.unique_spawn(105182,0,0,0,-673,8,0); --Venril Sathir
			eq.unique_spawn(105186,0,0,-13,-658,8,0); --an Arisen Disciple
			eq.unique_spawn(105183,0,0,13,-658,8,0); --an Arisen Priest
			eq.unique_spawn(105184,0,0,13,-690,8,0); --an Arisen Necromancer
			eq.unique_spawn(105185,0,0,-13,-690,8,0); --an Arisen Acolyte
			eq.depop_with_timer();
		end
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
