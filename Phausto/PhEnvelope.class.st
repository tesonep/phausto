"
I am the superclass for all Phausto envelopes.
In sound and music, an envelope describes how a sound changes over time.
The envelope generator was created by tHerbert Deutsch for Robert Moog, the creator of the Moog synthesizer, in the 1960s.
"
Class {
	#name : 'PhEnvelope',
	#superclass : 'UnitGenerator',
	#instVars : [
		'attack',
		'release',
		'trigger'
	],
	#category : 'Phausto-UnitGenerators',
	#package : 'Phausto',
	#tag : 'UnitGenerators'
}

{ #category : 'accessing' }
PhEnvelope >> attack [

	^ attack ifNil: [
		  attack := PhHSlider new
			            label: self label , 'Attack'
			            init: 0.01
			            min: 0
			            max: 4
			            step: 0.001 ]
]

{ #category : 'initialization' }
PhEnvelope >> initialize [

	super initialize.
	
]

{ #category : 'connecting' }
PhEnvelope >> patchedWith: aUnitGenerator [

	'sto pacciando adsr' traceCr .
	^ aUnitGenerator "asBox" * self asBox
]

{ #category : 'dependencies' }
PhEnvelope >> release [

	^ release ifNil: [
		  release := PhHSlider new
			             label: self label , 'Release'
			             init: 0.1
			             min: 0.001
			             max: 2
			             step: 0.001 ]
]

{ #category : 'accessing' }
PhEnvelope >> trigger [

	^ trigger  ifNil: [
		trigger := PhButton new label: self label , 'Gate' ]
]
