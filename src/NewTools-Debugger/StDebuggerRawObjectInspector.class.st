"
An object inspector showing only a raw view instead of a notebook.
Used in the particular case of the debugger context inspector to see variables in an large and without useless noisy details (e.g., tabs, ...).
"
Class {
	#name : #StDebuggerRawObjectInspector,
	#superclass : #StObjectInspector,
	#instVars : [
		'raw'
	],
	#category : #'NewTools-Debugger-View'
}

{ #category : #specs }
StDebuggerRawObjectInspector class >> noHeaderSpec [
	<spec: #default>
	^ SpBoxLayout newVertical
		add: #raw;
		yourself
]

{ #category : #initialization }
StDebuggerRawObjectInspector >> initializePresenters [
	super initializePresenters.
	raw := self model rawInspection.
	self addActivationTo: raw
]

{ #category : #initialization }
StDebuggerRawObjectInspector >> rawInspectorPageOrNil [
	^raw
]
