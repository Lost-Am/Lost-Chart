function onBeatHit()

    if curBeat >= 0 and curBeat <= 7 then
        setProperty('black.alpha', 1)
    end

    if curBeat == 8 then
        setProperty('black.alpha', 0)
        cameraFlash('other', 'FFFFFF', 0.5)
    end

    if curBeat == 48 then
        cameraFlash('other', 'FFFFFF', 0.5)
    end

    if curBeat == 108 then
        doTweenAlpha('fadeOut108', 'black', 1, crochet * 4 / 1000, 'linear')
    end

    if curBeat == 112 then
        cancelTween('fadeOut108')
        setProperty('black.alpha', 0)
        cameraFlash('other', 'FFFFFF', 0.5)
    end

    if curBeat == 240 then
        doTweenAlpha('fadeOut240', 'black', 1, crochet * 2 / 1000, 'linear')
    end

    if curBeat == 242 then
        doTweenAlpha('fadeIn242', 'black', 0, crochet * 2 / 1000, 'linear')
    end

    if curBeat == 244 then
        cameraFlash('other', 'FFFFFF', 0.5)
    end

    if curBeat == 312 then
        cameraFlash('other', 'FFFFFF', 0.5)
    end
	
	if curBeat == 576 then 
		setProperty('black.alpha', 1) cameraFlash('other', 'FFFFFF', 0.5)
	end
end