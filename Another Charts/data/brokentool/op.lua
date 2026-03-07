-- CONFIGURACIÓN
local radius = 30        -- más bajo = más mini (recomendado 6–10)
local speed = 3       -- velocidad suave
local baseX = 0
local baseY = 0
local t = 0

function onCreatePost()
    baseX = getProperty('dad.x')
    baseY = getProperty('dad.y')
end

function onUpdate(elapsed)
    -- tiempo continuo (NO se reinicia)
    t = t + elapsed

    -- movimiento circular suave
    local offsetX = math.cos(t * speed) * radius
    local offsetY = math.sin(t * speed) * radius

    setProperty('dad.x', baseX + offsetX)
    setProperty('dad.y', baseY + offsetY)
end
