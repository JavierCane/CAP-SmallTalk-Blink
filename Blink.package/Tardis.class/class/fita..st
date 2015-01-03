timeModification
fita: anExpression
	"a -fita- is a time mark available in order to return to it in terms of application context"
	fitesStack push: ( Continuation fromContext: thisContext sender ).
	
	^ anExpression 