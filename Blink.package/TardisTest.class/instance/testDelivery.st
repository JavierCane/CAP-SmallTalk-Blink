tests-timeModification
testDelivery
	Tardis initialize.
	( TA auxWith: $a and: ( ( TA auxWith: $b and: ( Tardis fita: 3 ) ) = 4 ) )
 		ifTrue: [
			Transcript show: 'aqui!'; cr.
            	TA auxWith: $c and: ( Tardis doctor: 'tot va be' ).
		]
		ifFalse: [
			( TA auxWith: $d and: ( ( TA auxWith: $e and: ( Tardis fita: 4 ) ) = 5 ) )
            	ifTrue: [
				TA auxWith: $f and: ( Tardis doctor: ( TA auxWith: $g and: ( Tardis angelPloraner: 4 ) ) ) 
			]
            	ifFalse: [
				Transcript show: 'hem arribat fins aqui!'; cr.
				TA auxWith: $h and: ( Tardis angelPloraner: 5 ).
			]
		]
