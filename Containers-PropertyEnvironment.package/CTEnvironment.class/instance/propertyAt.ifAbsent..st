accessing - properties
propertyAt: aKey ifAbsent: aBlock
	"Answer the value of the property ==aKey==, potentially looking in parents, or the result of ==aBlock== if the property doesn't exist."

	^ properties
		at: aKey asSymbol
		ifAbsent: [ self hasParent
				ifTrue: [ self parent propertyAt: aKey ifAbsent: aBlock ]
				ifFalse: aBlock ]