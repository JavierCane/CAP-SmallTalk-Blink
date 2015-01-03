tests-timeModification
testAngelPloranerShouldReturnExpressionEvaluation
	Tardis initialize.
	self assert:  5 equals: ( Tardis angelPloraner: 5 ).
	self assert:  5 equals: ( Tardis angelPloraner: 2 + 3 ).
	self assert:  5 equals: ( Tardis angelPloraner: 1 * 5 ).
	self assert:  5 equals: ( Tardis angelPloraner: 2 + 2 + 1 )