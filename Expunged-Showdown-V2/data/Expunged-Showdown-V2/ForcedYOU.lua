local lastSubText = ""

function onCreate()

    makeLuaText('kadeOverlay', 'Expunged-Showdown-V2\n', 600, 5, screenHeight - 45)
    setTextSize('kadeOverlay', 16)
    setTextAlignment('kadeOverlay', 'left')
    setTextFont('kadeOverlay', 'vcr.ttf')
    setTextBorder('kadeOverlay', 1, '000000')
    setObjectCamera('kadeOverlay', 'hud')
    addLuaText('kadeOverlay')
end

function onUpdate()
    local subText = ""

    if curBeat >= 0 and curBeat < 360 then
        subText = "\"Notes are scrambled! FUCK YOU!\""
    elseif curBeat >= 360 and curBeat < 672 then
        subText = "\"Ghost Tapping is forced off! FUCK YOU!\""
    elseif curBeat >= 672 then
        subText = "\"You won't survive Lost\""
    end

    if subText ~= lastSubText then
        setTextString('kadeOverlay', 'Expunged-Showdown-V2\n' .. subText)
        lastSubText = subText
    end
end