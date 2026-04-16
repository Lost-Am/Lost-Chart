local blockedBeats = {
    [132]=true,[140]=true,[148]=true,[156]=true,
    [164]=true,[172]=true,[180]=true,[188]=true,
    [196]=true,[204]=true,[212]=true,[220]=true,
    [228]=true,[236]=true,[244]=true,[252]=true
}

function onBeatHit()
    if blockedBeats[curBeat] then

        setProperty('camGame.zoom', getProperty('camGame.zoom') - 0.015)
        setProperty('camHUD.zoom', getProperty('camHUD.zoom') - 0.03)
    end
end