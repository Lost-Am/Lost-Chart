local startBeat = 410
local endBeat = 671

function onUpdate(elapsed)
    if curBeat < startBeat or curBeat > endBeat then return end

    songPos = getSongPosition()
    local currentBeat = (songPos / 5000) * (curBpm / 60)

    for i = 0, 3 do
        setPropertyFromGroup(
            'playerStrums',
            i,
            'x',
            ((screenWidth / 2) - (157 / 2)) + (math.sin(currentBeat + i) * 300)
        )

        setPropertyFromGroup(
            'playerStrums',
            i,
            'y',
            ((screenHeight / 2) - (157 / 2)) + (math.cos(currentBeat + i) * 300)
        )
    end

    for i = 0, 3 do
        setPropertyFromGroup(
            'opponentStrums',
            i,
            'x',
            ((screenWidth / 2) - (157 / 2)) + (math.sin(currentBeat + (i+4)*2) * 300)
        )

        setPropertyFromGroup(
            'opponentStrums',
            i,
            'y',
            ((screenHeight / 2) - (157 / 2)) + (math.cos(currentBeat + (i+4)*2) * 300)
        )
    end
end