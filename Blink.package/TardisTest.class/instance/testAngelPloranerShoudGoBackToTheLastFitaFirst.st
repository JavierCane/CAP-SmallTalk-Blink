tests-timeModification
testAngelPloranerShoudGoBackToTheLastFitaFirst
	| fitaValue fita2Value |
	
	Tardis initialize.
	
	"Set a milestone or 'fita' in order to be able to return to this moment in terms of application context. At the moment of the first invokation, the fitaValue will be set to 4."
	fitaValue := Tardis fita: 2 * 2. 
	
	"Set a milestone or 'fita' in order to be able to return to this moment in terms of application context. At the moment of the first invokation, the fitaValue will be set to 10."
	fita2Value := Tardis fita: 2 * 5. 
	
	"The fita2Value will be 10 at the first execution, so we'll go to the ifTrue case"
	( fita2Value = 10 )
		ifTrue: [ 
			"Go to the last milestone or 'fita' set and evaluate it with the '12' as its expression, so we'll go back to the (fita2Value = 10) evaluation"
			"but it will go to the ifFalse case because the fitaValue will be '12'."
			Tardis angelPloraner: 12.
			
			"We'll never arrive to this point, so we're throwing an exception thanks to the assert method in order to make the test fail."
			self assert: false.
		 ]
		ifFalse: [ 
			"In case of a fita2Value different from '10', evaluate if it's equal to '12' since it's the value set by the first angelPloraner call."
			( fita2Value = 12 )
			ifTrue: [ 
				( fitaValue = 4 ) 
					"If we've a value equals to '4', means we've properly modified the application context for the last fita through the angelPloraner but not the first fita."
					ifTrue: [
						"Go to the last milestone or 'fita' set and evaluate it with the '9' as its expression, so we'll go back to the (fita2Value = 10) evaluation"
						"but it will go to the ifFalse case because the fitaValue will be '9' it will also pass the second evaluation (fita2Value = 12) as the last fita"
						"should have been modified but won't pass the third evaluation (fitaValue = 4)."
						Tardis angelPloraner: 9.
					]
					"If we neither have a value equals to 4 nor 9, it means we've done something wrong with the application context and the angelPloraner doesn't properly modify it."
					ifFalse: [
						( fitaValue = 9 ) 
						"If we've a value equals to '9', means we've properly modified the application context through the angelPloraner."
						ifTrue: [
							self assert: true
						]
						"If we neither have a value equals to 4 nor 9, it means we've done something wrong with the application context and the angelPloraner doesn't properly modify it."
						ifFalse: [
							self assert: false
						].
					].	
			]
			ifFalse: [  
				self assert: false	
			]
			"In case of a fitaValue different from '4', evaluate if it's equal to '9' since it's the value set by the angelPloraner call."
			
		]