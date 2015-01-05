timeModification
angelPloraner: anExpression
	"an -angelPloraner- is a being that feeds on residual energy derived from time-travel. In order to survive it sends other beings back in time (to the last -fita- created)"
	| lastFita |
	
	"Put the current context into the angelsPloranersContextsStack in order to be able to recover it from a #doctor call."
	angelsPloranersContextsStack push: ( Continuation fromContext: thisContext sender ).
	
	"Firstly, check if the stack of fites is empty in order to do not make any action and only evaluate the received expression"
	( fitesContextsStack isEmpty )
		ifTrue: [ 
			^ anExpression
		 ].
	
	"Also, recover the previously saved context and evaluate the expression on it."
	lastFita := fitesContextsStack pop.
	lastFita value: anExpression.