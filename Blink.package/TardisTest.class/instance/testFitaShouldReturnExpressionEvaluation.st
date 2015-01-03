tests-timeModification
testFitaShouldReturnExpressionEvaluation
	self assert:  5 equals: ( Tardis fita: 5 ).
	self assert:  5 equals: ( Tardis fita: 2 + 3 ).
	self assert:  5 equals: ( Tardis fita: 1 * 5 ).
	self assert:  5 equals: ( Tardis fita: 2 + 2 + 1 )