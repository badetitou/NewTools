Class {
	#name : #StFullStackDebugCommand,
	#superclass : #StDebugCommand,
	#category : #'NewTools-Debugger-Commands'
}

{ #category : #default }
StFullStackDebugCommand class >> defaultDescription [
	^ 'Shows the full stack.'
]

{ #category : #initialization }
StFullStackDebugCommand class >> defaultIconName [
	^ #glamorousMore
]

{ #category : #default }
StFullStackDebugCommand class >> defaultName [
	<toolbarDebugCommand: 999>
	^ 'Show full stack'
]

{ #category : #initialization }
StFullStackDebugCommand class >> defaultShortcut [
	^ nil
]

{ #category : #hooks }
StFullStackDebugCommand >> execute [
	self debugger showFullStack
]
