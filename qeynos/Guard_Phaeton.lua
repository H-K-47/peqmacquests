function event_say(e)
  if(e.message:findi("hail")) then
    e.self:Say("Hail, " .. e.other:GetName() .. "! What brings you to the docks? Come to visit ol' Captain Rohand and do some fishing? I plan on doing that when I can get a day off.");
  end
end


function event_signal(e)
  e.self:Say("Yes, sir!");
end
