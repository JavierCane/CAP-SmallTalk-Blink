tests-timeModification
testAngelPloranerShoudChangeContext
	"comment stating purpose of message"

	| fitaValue |
	
	fitaValue := Tardis fita: 2 * 2.
	
	(fitaValue = 4)
		ifFalse: [ 
			(fitaValue = 9) 
				ifTrue: [ (self assert: true ) ]
				ifFalse: [ (self assert: false ) ]
		]
		ifTrue: [ 
			Tardis angelPloraner: 9.
			self assert: false.
		 ]
	