tests-timeModification
testFitaShouldSaveCurrentContext
	| lastSavedContext currentContext |
	
	Tardis initialize.
	
	Tardis fita: 2 + 3.
	
	currentContext := Continuation current.
	
	lastSavedContext := Tardis getLastFita.
	
	self assert: currentContext equals: lastSavedContext