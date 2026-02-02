function onUpdate(elapsed)
 if curStep == 20 then
  started = true
 end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('Lights', 'Lights.scale', 1 - 1*math.sin((currentBeat+1*0.1)*math.pi), 3)

end
