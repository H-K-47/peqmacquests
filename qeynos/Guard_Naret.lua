function event_say(e)
  if(e.message:findi("hail")) then
    e.self:Say("Hail, " .. e.other:GetName() .. "! How's the life of an adventurer treating you?  If you need some extra income, you might visit Captain Tillin at the Grounds of Fate.  He is recruiting volunteers to help defend the city from the gnolls to the north.");
  end
end

function event_combat(e)
  if(e.joined == true) then
    e.self:Say(string.format("Time to die %s!",e.other:GetCleanName()));
  end
end
