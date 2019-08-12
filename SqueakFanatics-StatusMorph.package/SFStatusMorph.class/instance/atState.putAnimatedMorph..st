initialize-release
atState: aState putAnimatedMorph: aMorph

	self atState: aState putMorph: aMorph.
	durations at: aState put: aMorph delays sum.