-- Script by Unbekannt, credit would be hella sick

-- - - - - - - - - - - - - - - - - - - - Edit these and adjust them for your song! - - - - - - - - - - - - - - - - - - - - - - - - 
-- ________ Animation Names: __________________________ 
-- Put in the names of the animations in the characters xml file
XML_l = 'Miku Sing Note LEFT0' 		-- Left Sing
XML_d = 'Miku Sing Note DOWN0' 		-- Down Sing
XML_u = 'Miku Sing Note UP0' 			-- Up Sing
XML_r = 'Miku Sing Note RIGHT0' 		-- Right Sing

-- ________ Animation Offsets: ________________________ 
-- Put in the offset of all the animations here. First number is X, second is Y 
-- You can find the animation offset in the character editor
lOs = {'30', '1'}		-- Left Sing
dOs = {'20', '1'}	-- Down Sing
uOs = {'-33', '51'}		-- Up Sing
rOs = {'-67', '2'}		-- Right Sing	


		-- Template version
-- lOs = {'0', '0'}		-- Left Sing
-- dOs = {'0', '0'}		-- Down Sing
-- uOs = {'0', '0'}		-- Up Sing
-- rOs = {'0', '0'}		-- Right Sing	

-- ________ Base Offsets: ________________________ 
-- Position offset of the ghost 
offX = 0		-- X Positon Offset
offY = 15		-- Y Position Offset

-- ________ Name of the Ghost note: ___________________ 
-- The note type that uses the ghost, 'No Animation' is recommended (Since it doesn't make Bf sing)
doubleNoteName = 'No Animation'		

-- ________ Distance of the ghost: ____________________ 
-- distance of the ghost 
ghostMove = 300 -- ~300 is recommended

-- ________ Opacity of the ghost: _____________________
ghostAlpha = 0.7 -- 0.7 is recommended

-- ________ Time the ghost stays: _____________________
ghostDelay = 0.3 -- 0.3 is recommended



-- - - - - - - - - - - - - - - - - - - - The actuall code - - - - - - - - - - - - - - - - - - - - - - - - 
function onCreatePost()
	makeAnimatedLuaSprite('ghostBf', getProperty('boyfriend.imageFile'), getProperty('boyfriend.x') + offX, getProperty('boyfriend.y')- offY)
	addAnimationByPrefix('ghostBf', '0', XML_l, 24, false)
	addAnimationByPrefix('ghostBf', '1', XML_d, 24, false)
	addAnimationByPrefix('ghostBf', '2', XML_u, 24, false)
	addAnimationByPrefix('ghostBf', '3', XML_r, 24, false)
	setObjectOrder('ghostBf', getObjectOrder('boyfriendGroup') - 1);
	setProperty('ghostBf.alpha', 0)
	setProperty('ghostBf.flipX', getProperty('boyfriend.flipX'))  -- <-- esto
	addLuaSprite('ghostBf', true)
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    if (noteType == doubleNoteName) then
        setProperty('ghostBf.alpha', ghostAlpha)
		cancelTween('doubleNoteTweenBack')
		cancelTween('doubleNoteTweenBackAlpha')
		runTimer('ghostSings', ghostDelay)

		doTweenX('doubleNoteTween', 'ghostBf', getProperty('boyfriend.x') + offX + ghostMove, 0.25, 'sineOut' )
		
		objectPlayAnimation('ghostBf', noteData, true)
		if noteData == 0 then
			setProperty('ghostBf.offset.x', lOs[1])
			setProperty('ghostBf.offset.y', lOs[2])
		elseif noteData == 1 then
			setProperty('ghostBf.offset.x', dOs[1])
			setProperty('ghostBf.offset.y', dOs[2])
		elseif noteData == 2 then
			setProperty('ghostBf.offset.x', uOs[1])
			setProperty('ghostBf.offset.y', uOs[2])
		elseif noteData == 3 then
			setProperty('ghostBf.offset.x', rOs[1])
			setProperty('ghostBf.offset.y', rOs[2])
		end

	end
end

function onTimerCompleted(tag)
	if tag == 'ghostSings' then
		doTweenX('doubleNoteTweenBack', 'ghostBf', getProperty('boyfriend.x') + offX, 0.5, 'quartIn')
		doTweenAlpha('doubleNoteTweenBackAlpha', 'ghostBf', 0, 0.5, 'quartIn')
	end
end
