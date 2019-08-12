*SqueakFanatics-StatusMorph-*SUnitTools-running
testRunSuite: suite
	
	| result |
	result := suite run.

	(result respondsTo: #dispatchResultsIntoHistory)
		ifTrue: [result dispatchResultsIntoHistory].

	SFStatusMorph displaySuccess: result hasPassed.
	result hasPassed ifTrue: [^ self].
	
	(result defects size = 1
		ifTrue: [result defects anyOne]
		ifFalse: [UIManager default
				chooseFrom: (result defects collect: [:each | each class name , '>>' , each selector printString])
				values: result defects
				title: ('{1} passes, {2} failures, {3} errors\\Debug a failure or error?' format: {
						result runCount . result failureCount . result errorCount}) withCRs]
	) ifNotNil: [:defect | defect debug].
