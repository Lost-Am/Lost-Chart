local dadx = 200;
local dady = 550;
local bfx = 852.9;
local bfy = 550;

local centerx = 550;
local centery = 530;

local ofs = 50;
local followchars = false;
local centerscreen = false;

function onEvent(name,value1,value2)
	if name == 'Wolfensponge Camera Notes' then
		if (value1 == 'on') then
            followchars = true;
        elseif (value1 == 'off') then
            followchars = false;
        end
        if (value2 == 'on') then
            centerscreen = true;
        elseif (value2 == 'off') then
            centerscreen = false;
        end
	end
end

function onUpdate()
    if centerscreen == true then
        setProperty('defaultCamZoom',0.9)
        if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
            triggerEvent('Camera Follow Pos',centerx-ofs,centery)
        end
        if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
            triggerEvent('Camera Follow Pos',centerx+ofs,centery)
        end
        if getProperty('dad.animation.curAnim.name') == 'singUP' then
            triggerEvent('Camera Follow Pos',centerx,centery-ofs)
        end
        if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
            triggerEvent('Camera Follow Pos',centerx,centery+ofs)
        end
        if getProperty('dad.animation.curAnim.name') == 'idle' then
            triggerEvent('Camera Follow Pos',centerx,centery)
        end
    elseif followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.8)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',dadx-ofs,dady)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',dadx+ofs,dady)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',dadx,dady-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',dadx,dady+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',dadx,dady)
            end
        else

            setProperty('defaultCamZoom',0.9)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',bfx-ofs,bfy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',bfx+ofs,bfy)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',bfx,bfy-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',bfx,bfy+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',bfx,bfy)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end

function onBeatHit()
	if didEvent then
		if (getPropertyFromClass('flixel.FlxG', 'camera.zoom') < 2.7 and getPropertyFromClass('ClientPrefs', 'camZooms')) then
			setPropertyFromClass('flixel.FlxG', 'camera.zoom', getPropertyFromClass('flixel.FlxG', 'camera.zoom') + 0.03);
			setProperty('camHUD.zoom', getProperty('camHUD.zoom') + 0.06);
		end
	end
end