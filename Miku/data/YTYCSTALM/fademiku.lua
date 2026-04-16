function onCreate()
    setProperty('boyfriend.alpha', 0)
end

function onBeatHit()
    if curBeat == 24 then
        doTweenAlpha('bfFade', 'boyfriend', 1, crochet * (64-24) / 1000, 'linear')
    end
end