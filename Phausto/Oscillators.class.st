"
This class contains a collection of Oscllators taken from the Faust oscillators.lib
"
Class {
	#name : 'Oscillators',
	#superclass : 'UnitGenerator',
	#instVars : [
		'freq'
	],
	#category : 'Phausto-UnitGenerators',
	#package : 'Phausto',
	#tag : 'UnitGenerators'
}

{ #category : 'accessing' }
Oscillators >> freq [

	^ freq ifNil: [   PhHSlider new
		        label: self label , 'Freq'
		        init: 440
		        min: 20
		        max: 4086
		        step: 1 ]
]

{ #category : 'initialization' }
Oscillators >> initialize [

	super initialize.
	"default frequency for all Oscilators is A4 at picth standard"
]
