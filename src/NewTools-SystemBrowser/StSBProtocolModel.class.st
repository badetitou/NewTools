Class {
	#name : #StSBProtocolModel,
	#superclass : #StSBModel,
	#instVars : [
		'protocol'
	],
	#category : #'NewTools-SystemBrowser-Model'
}

{ #category : #'instance creation' }
StSBProtocolModel class >> newEnvironment: anEnvironment protocol: aProtocol [

	^ self new 
		environment: anEnvironment;
		protocol: aProtocol;
		yourself
]

{ #category : #accessing }
StSBProtocolModel >> methods [

	^ (self protocol methods 
		collect: [ :each | 
			StSBMethodModel 
				newEnvironment: self environment 
				method: each ])
		sorted: #name ascending
]

{ #category : #accessing }
StSBProtocolModel >> name [

	^ self protocol name
]

{ #category : #accessing }
StSBProtocolModel >> protocol [
	^ protocol
]

{ #category : #accessing }
StSBProtocolModel >> protocol: anObject [
	protocol := anObject
]
