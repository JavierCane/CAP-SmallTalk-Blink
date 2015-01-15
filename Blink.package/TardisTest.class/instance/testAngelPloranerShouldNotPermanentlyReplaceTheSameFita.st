tests-timeModification
testAngelPloranerShouldNotPermanentlyReplaceTheSameFita
"This test should print through the Transcript the following text: 
==> a : 1
==> b : 2
==> b : 3
==> a : 3
==> b : 2
==> b : 3
==> c : 3
==> c : 4
==> c : 4
==> c : 4
==> c : 4
==> d : 4"

Tardis initialize.
TA auxWith: $a and: (Tardis fita: 1).
TA auxWith: $b and: (Tardis fita: 2).
TA auxWith: $c and: (Tardis angelPloraner: 3).
TA auxWith: $d and: (Tardis doctor: 4).