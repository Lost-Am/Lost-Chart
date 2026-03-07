-- Configuration
customPopupType = "sick"   -- Popup rating type
comboIncrement = 0         -- How much to increment per note
customComboValue = 0       -- Running total combo value

-- Max safe integer for Haxe numbers
local MAX_SAFE_INT = 9007199254740991

-- Event handler
function onEvent(name, value1, value2)
    if name == "Change Combo" then
        -- Parse value1
        if tonumber(value1) then
            comboIncrement = tonumber(value1)
        elseif value1 and value1 ~= "" then
            customPopupType = tostring(value1)
        end

        -- Parse value2 (comma-separated)
        if value2 and value2 ~= "" then
            local parts = {}
            for str in string.gmatch(value2, "([^,]+)") do
                table.insert(parts, str)
            end

            if parts[1] and parts[1] ~= "" then
                customPopupType = tostring(parts[1])
            end
            if parts[2] and tonumber(parts[2]) then
                comboIncrement = tonumber(parts[2])
            end
            if parts[3] and tonumber(parts[3]) then
                customComboValue = tonumber(parts[3])
            end
        end
    end
end

-- Shared function to apply combo and popup
function applyCombo()
    -- Add comboIncrement directly to running total
    customComboValue = customComboValue + comboIncrement

    -- Clamp to safe range
    if customComboValue > MAX_SAFE_INT then
        customComboValue = MAX_SAFE_INT
    elseif customComboValue < 0 then
        customComboValue = 0
    end

    -- Escape quotes in popup type
    local safePopup = tostring(customPopupType)
    safePopup = string.gsub(safePopup, '"', '\\"')

    -- Convert number to integer string to avoid scientific notation
    local comboString = string.format("%.0f", customComboValue)

    -- Run Haxe code safely
    runHaxeCode([[
        try {
            var comboValue = ]] .. comboString .. [[;
            var rating:String = "]] .. safePopup .. [[";

            if (game != null) {
                game.combo = comboValue;
                game.totalPlayed = comboValue;
                game.popUpScore(rating, FlxG.random.int(85, 110));
            }
        } catch(e:Dynamic) {
            // silently ignore errors
        }
    ]])
end

-- Player side
function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        applyCombo()
    end
end

-- Opponent side
function opponentNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        applyCombo()
    end
end
