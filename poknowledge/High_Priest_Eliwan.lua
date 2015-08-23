--Planar Armor Exchange
function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Emote("makes an almost unearthly graceful gesture as he bows politely at the waist in formal greetings. 'May the light of Tunare shine brightly upon your fate, my friend, and may the purity of goodly virtues guide your convictions. I am High Priest Eliwan, former scholar, historian, and spiritual leader in the faith dedicated toward the Mother of All. In the era that housed my life, Takish`Hiz was my home in the beautiful forest of Elddar, the shining crown jewel of Tunare's grace and infinite splendor. We were at peace then -- the trolls and ogres had yet to rise against us and the foul Teir`Dal still far from their surfacing from the bowels of the underfoot. Eventually, the time would come for me to pass beyond and it was the light of Selia that seduced my spirit with its decadent allure of purity. Though I love my goddess, I did not wish to leave her service in the universe and this recent era has granted me the utmost pleasure of returning to that active service again.'");
	end
end

function event_trade(e)
	local item_lib = require("items");
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd and manual edits by Speedz
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
