timeModification
doctor: anExpression
	"a -doctor- is a Time Lord from Gallifrey that uses the Tardis in order to repair the harm made by the -angelPloraner-. He travels back in time to the moment of the wrong-doing of the -angelPloraner- and fixes the space-time malfunctions"
	| lastAngelPloranerContext |
	
	"Firstly, check if the stack of angels ploraners is empty in order to do not make any action and only evaluate the received expression"
	( angelsPloranersContextsStack  isEmpty )
		ifTrue: [ 
			^ anExpression
		 ].
	
	"If we've any angel ploraner context stored on the angelsPloranersContextsStack, recover it and evaluate the expression on it."
	lastAngelPloranerContext := angelsPloranersContextsStack pop.
	lastAngelPloranerContext value: anExpression. 