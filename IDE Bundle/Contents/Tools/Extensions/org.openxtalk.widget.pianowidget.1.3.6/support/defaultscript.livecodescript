script "community.livecode.paulmcclernan.pianowidget.__DefaultScript"

on noteOn pNoteNum,pNoteName
	-- Sent when a  pianokey is clicked
	put "noteOn " & pNoteNum && pNoteName

	----------------------- AVAudioSampler -------------------------
	-- split pNoteNum by ","
	-- repeat for each element tNote in pNoteNum
   --  AVAudioSamplerNoteOn tNote,127,1
	-- end repeat

end noteOn

on noteOff pNoteNum,pNoteName
	-- Sent when a  pianokey is released
	put "noteOff " & pNoteNum && pNoteName

	----------------------- AVAudioSampler -------------------------
	-- split pNoteNum by ","
	-- repeat for each element tNote in pNoteNum
	--  AVAudioSamplerNoteOff tNote,1
	-- end repeat

end noteOff
