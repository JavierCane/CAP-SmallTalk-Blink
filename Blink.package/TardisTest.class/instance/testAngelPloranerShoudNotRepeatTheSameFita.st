tests-timeModification
testAngelPloranerShoudNotRepeatTheSameFita
	| fitaValue |
	
	Tardis initialize.
	
	"Set a milestone or 'fita' in order to be able to return to this moment in terms of application context. At the moment of the first invokation, the fitaValue will be set to 4."
	fitaValue := Tardis fita: 2 * 2. 
	
	"The fitaValue will be 4 at the first execution, so we'll go to the ifTrue case"
	( fitaValue = 4 )
		ifTrue: [ 
			"Go to the last milestone or 'fita' set and evaluate it with the '9' as its expression, so we'll go back to the (fitaValue = 4) evaluation but it will go to the ifFalse case because the fitaValue will be '9'."
			Tardis angelPloraner: 9.
			
			"We'll never arrive to this point, so we're throwing an exception thanks to the assert method in order to make the test fail."
			self assert: false.
		 ]
		ifFalse: [ 
			"In case of a fitaValue different from '4', evaluate if it's equal to '9' since it's the value set by the angelPloraner call."
			( fitaValue = 9 ) 
				"If we've a value equals to '9', means we've properly modified the application context through the angelPloraner."
				ifTrue: [
					"Try to go back again with the 'angelPloraner' method call. Since we have not set any other 'fita', the program should continue and not go back in time again."
					Tardis angelPloraner: 9999.
					self assert: true
				]
				"If we neither have a value equals to 4 nor 9, it means we've done something wrong with the application context and the angelPloraner doesn't properly modify it."
				ifFalse: [
					self assert: false
				]
		]