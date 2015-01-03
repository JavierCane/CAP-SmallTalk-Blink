timeModification
angelPloraner: anExpression
	"an -angelPloraner- is a being that feeds on residual energy derived from time-travel. In order to survive it sends other beings back in time (to the last -fita- created)"
	| lastFita |
	
	"Firstly, check if the stack of fites is empty in order to do not make any action and only evaluate the received expression"
	( fitesStack isEmpty )
		ifTrue: [ 
			^ anExpression
		 ].
	
	"If we've any fita stored on the fitesStack, put the current context into the angelsPloranersContextsStack in order to be able to recover it from a #doctor call."
	angelsPloranersContextsStack push: ( Continuation fromContext: thisContext sender ).
	
	"Also, recover the previously saved context and evaluate the expression on it."
	lastFita := fitesStack pop.
	lastFita value: anExpression.