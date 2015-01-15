tests-timeModification
testAngelPloranerShouldSaveTheContextWithoutPreviousFitaCalls
"This test should print through the Transcript the following text: 
==> c : 3
==> c : 4
==> d : 4"

Tardis initialize.
TA auxWith: $c and: (Tardis angelPloraner: 3).
TA auxWith: $d and: (Tardis doctor: 4).