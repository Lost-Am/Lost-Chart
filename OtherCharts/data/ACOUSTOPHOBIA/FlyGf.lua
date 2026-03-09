function onUpdate()
	songPos = getSongPosition()
	currentBeat = (songPos/1000)*(bpm/98)
	setProperty("gf.scale.x",0.5)
	setProperty("gf.scale.y",0.5)
	setProperty("gf.y",-1000+math.sin(currentBeat*math.pi/16)*200)
	setProperty("gf.x",-2000+math.fmod(currentBeat*100,4500))
	setProperty("gf.angle",currentBeat*10)
end