*SqueakFanatics-StatusMorph
updateResults
	"<lint: #expect rule: #guardingClause>"
	"<lint: #expect rule: #longMethods>"

	self updateStatus: false.
	failedList size = result failures size ifFalse: [
		failedList := result failures asArray
			sort: [ :a :b | a printString <= b printString ].
		failedSelected := nil.
		self 
			changed: #failedList; 
			changed: #failedSelected;
			changed: #hasFailures;
			changed: #hasProgress  ].
	errorList size = result errors size ifFalse: [
		errorList := result errors asArray
			sort: [ :a :b | a printString <= b printString ].
		errorSelected := nil.
		self 
			changed: #errorList; 
			changed: #errorSelected;
			changed: #hasErrors;
			changed: #hasProgress ].
	
	(result runCount > 0) ifTrue: [
		SFStatusMorph displaySuccess: result failureCount + result errorCount = 0 ].