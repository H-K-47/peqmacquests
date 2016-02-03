function event_say(e)

	if(e.message:findi("hail")) then
		e.self:Say("Greetings, " .. e.other:GetName() ..". Have you seen the fine clock in Merchant's Square? It was a gift from the gnomes of Ak'Anon to Antonius Bayle and the people of Qeynos.");	
	end
	
end

function event_signal(e)
  e.self:Say("Yes, sir!");
end
