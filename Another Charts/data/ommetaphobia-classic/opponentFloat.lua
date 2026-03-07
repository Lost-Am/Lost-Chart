local dadBaseY = 0

function onCreate()
    dadBaseY = getProperty('dad.y')
end

function onUpdate(elapsed)

    if curStep >= 0 then

        local songPos = getSongPosition()
        local currentBeat = (songPos/1000)*(bpm/80)

        local floatOffset = -110 * math.sin((currentBeat * 0.25) * math.pi)
        local floatY = dadBaseY + floatOffset

        setProperty('dad.y', floatY)

        if mustHitSection == false then
            setProperty('camFollow.y', floatY + 450)
        end

    end
end