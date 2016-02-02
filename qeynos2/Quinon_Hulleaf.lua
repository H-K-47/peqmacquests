function event_trade(e)
	local item_lib = require("items");

	-- live confirmed text + faction
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 18020})) then
		e.self:Say("Ah, hey, " .. e.other:GetName() .. "...  <yawns>...  Here ya go...  <yawns>...  Please excuse my yawning, but this working nights has really drained the energy out of me.  Though, it does...  <yawn>...  get interesting around here sometimes, which helps to keep me awake.  Anyway, be safe, " .. e.other:GetName() .. ", and I'll see you later.");
		e.other:SummonItem(18025);
		e.other:Ding();
		e.other:Faction(192,10,0);
		e.other:Faction(184,1,0);
		e.other:Faction(135,1,0);
		e.other:Faction(273,-1,0);
		e.other:Faction(207,-1,0);
		e.other:AddEXP(200);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
