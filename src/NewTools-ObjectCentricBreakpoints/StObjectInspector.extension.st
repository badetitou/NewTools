Extension { #name : #StObjectInspector }

{ #category : #'*NewTools-ObjectCentricBreakpoints' }
StObjectInspector >> haltInspectedObjectOnReadAccess [
	^self inspectedObject haltOnRead
]

{ #category : #'*NewTools-ObjectCentricBreakpoints' }
StObjectInspector >> haltInspectedObjectOnStateAccess [
	^ self inspectedObject haltOnStateAccess 
]

{ #category : #'*NewTools-ObjectCentricBreakpoints' }
StObjectInspector >> haltInspectedObjectOnWriteAccess [
	^ self inspectedObject haltOnWrite
]

{ #category : #'*NewTools-ObjectCentricBreakpoints' }
StObjectInspector class >> objectCentricBreakpointCommandsWith: presenter forRootGroup: aRootCmCommandsGroup [
	<extensionCommands>
	aRootCmCommandsGroup
		register: OCHaltOnReadCommand forSpec;
		register: OCHaltOnWriteCommand forSpec;
		register: OCHaltOnStateAccessCommand forSpec
]
