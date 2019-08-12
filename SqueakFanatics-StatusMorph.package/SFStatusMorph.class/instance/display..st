display
display: newState

	currentState ~= newState
		ifTrue: [
			currentState := newState.
			morphs keysAndValuesDo: [:state :morph |
				morph hide.
				(morph respondsTo: #setStepping:)
					ifTrue: [morph setStepping: false]]].
	(morphs at: newState) in: [:morph |
		morph show.
		(morph respondsTo: #setStepping:)
			ifTrue: [morph setStepping: true].
		(morph respondsTo: #reset)
			ifTrue: [morph reset]].
	self removeAlarm: #displayDefault.
	durations at: newState ifPresent: [:duration |
		self addAlarm: #displayDefault after: duration].