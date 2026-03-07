
function onCreate()


    makeLuaSprite('backg', 'broken_expunged_chain', -1200, -600)
	setProperty('backg.antialiasing', false)
    scaleObject('backg',2,2)
    addGlitchEffect('backg', 2,5)
    makeLuaSprite('mark', 'expunged_chains', -1200, -600)
	setProperty('mark.antialiasing', false)
scaleObject('mark',2,2)
    addGlitchEffect('mark', 2,5)
    makeLuaSprite('bg', 'glitchyUnfairBG', -1200, -600)
	setProperty('bg.antialiasing', false)
scaleObject('bg',2,2)
    addGlitchEffect('bg', 2,5)
    makeLuaSprite('bgr', 'glitchy_cheating_2', -1200, -600)
	setProperty('bgr.antialiasing', false)
scaleObject('bgr',2,2)
    addGlitchEffect('bgr', 2,5)
    makeLuaSprite('rbg', 'creepyRoom', -1200, -600)
	setProperty('rbg.antialiasing', false)
scaleObject('rbg',2,2)
    addGlitchEffect('rbg', 2, 5)
    makeLuaSprite('rgb', 'cheater GLITCH', -1200, -600)
	setProperty('rgb.antialiasing', false)
scaleObject('rgb',2,2)
    addGlitchEffect('rgb', 2, 5)
  addLuaSprite('rbg',false)
end 
function onUpdate(elapsed)
if songName == 'Exploitation' then
if curBeat == 144 then
    removeLuaSprite('rbg', false) 
    addLuaSprite('rgb', false)   
end
if curBeat == 192 then
    removeLuaSprite('rgb', false)  
     addLuaSprite('rbg', false)    
end
if curBeat == 256 then
    removeLuaSprite('rbg', false) 
    addLuaSprite('bg', false)   
end
if curBeat == 288 then
    removeLuaSprite('bg', false) 
    addLuaSprite('mark', false)   
end
if curBeat == 320 then
    removeLuaSprite('mark', false) 
    addLuaSprite('backg', false)   
end
if curBeat == 392 then
    removeLuaSprite('backg', false) 
 addLuaSprite('rbg', false)   
end
if curBeat == 456 then
    removeLuaSprite('rbg', false) 
    addLuaSprite('bgr', false)   
end
if curBeat == 488 then
    removeLuaSprite('bgr', false) 
    addLuaSprite('rbg', false)   
end


end
end
