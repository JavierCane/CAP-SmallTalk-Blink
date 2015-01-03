timeModification
angelPloraner: anExpression
	"an -angelPloraner- is a being that feeds on residual energy derived from time-travel. In order to survive it sends other beings back in time (to the last -fita- created)"
	| lastFita |
	(fitesStack isEmpty)
		ifFalse: [ 
			lastFita := fitesStack pop.
			lastFita value: anExpression.
		 ]. 
	^ anExpression 