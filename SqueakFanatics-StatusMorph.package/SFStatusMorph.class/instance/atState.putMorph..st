initialize-release
atState: aState putMorph: aMorph

	morphs at: aState put: aMorph.
	self addMorph: aMorph.