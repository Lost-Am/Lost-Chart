local radius = 30
local speed = 3
local baseX = 0
local baseY = 0
local t = 0

function onCreatePost()
    baseX = getProperty('dad.x')
    baseY = getProperty('dad.y')
end

function onUpdate(elapsed)

    t = t + elapsed

    local offsetX = math.cos(t * speed) * radius
    local offsetY = math.sin(t * speed) * radius

    setProperty('dad.x', baseX + offsetX)
    setProperty('dad.y', baseY + offsetY)
end
