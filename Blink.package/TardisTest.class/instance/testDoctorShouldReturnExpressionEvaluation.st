tests-timeModification
testDoctorShouldReturnExpressionEvaluation
	Tardis initialize.
	self assert:  5 equals: ( Tardis doctor: 5 ).
	self assert:  5 equals: ( Tardis doctor: 2 + 3 ).
	self assert:  5 equals: ( Tardis doctor: 1 * 5 ).
	self assert:  5 equals: ( Tardis doctor: 2 + 2 + 1 )