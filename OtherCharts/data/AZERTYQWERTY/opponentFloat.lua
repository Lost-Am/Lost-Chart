function onUpdate(elapsed)

    if curStep >= 0 then

        songPos = getSongPosition()
        local currentBeat = (songPos/1000)*(bpm/80)

        local floatY = 300 - 110 * math.sin((currentBeat * 0.25) * math.pi)

        setProperty('dad.y', floatY)

        -- corregir seguimiento de cámara
        if mustHitSection == false then
            setProperty('camFollow.y', floatY + 450)
        end

    end

end