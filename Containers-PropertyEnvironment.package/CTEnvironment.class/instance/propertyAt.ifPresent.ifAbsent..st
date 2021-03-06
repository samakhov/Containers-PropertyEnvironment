accessing - properties
propertyAt: aKey ifPresent: presentBlock ifAbsent: absentBlock
	"Answer the result of ==presentBlock== if I have the property ==aKey==, in the receiver or its parents or the result of ==absentBlock==."

	^ (self hasProperty: aKey)
			ifTrue: [ presentBlock value: (self propertyAt: aKey) ]
			ifFalse: [ absentBlock value ]