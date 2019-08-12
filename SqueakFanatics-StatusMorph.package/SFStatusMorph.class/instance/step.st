state
step

	stepsAnimationVisible < 0
		ifTrue: [^ self].
	stepsAnimationVisible = 0
		ifTrue: [
			stepsAnimationVisible := -1.
			^ self displayDefault].
	stepsAnimationVisible := stepsAnimationVisible - 1.