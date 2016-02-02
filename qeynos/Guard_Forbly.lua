function event_say(e)
  if(e.message:findi("hail")) then
    e.self:Say("Ahoy, " .. e.other:GetName() .. "!  My name is Forbly Taxx.  My father was a sailor and we settled here in Qeynos.  I love the sea air.  I don't know why anyone would ever want to leave.");    
  end
end

function event_signal(e)
  e.self:Say("Yes, sir!");
end
