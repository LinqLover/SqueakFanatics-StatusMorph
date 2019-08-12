display
displaySuccess: aBoolean 

	^ self display: (aBoolean
		ifTrue: [#success]
		ifFalse: [#failure])