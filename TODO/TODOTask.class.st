Class {
	#name : #TODOTask,
	#superclass : #Object,
	#instVars : [
		'done',
		'title'
	],
	#classInstVars : [
		'uniqueInstance',
		'instances'
	],
	#category : #'TODO-Domain'
}

{ #category : #'class initialization' }
TODOTask class >> add: anInstance [
	(instances includes: anInstance)
		ifFalse: [instances add: anInstance]
]

{ #category : #'class initialization' }
TODOTask class >> initialize [ 
	
	self reset
]

{ #category : #'class initialization' }
TODOTask class >> instances [ 

	^ instances
]

{ #category : #'class initialization' }
TODOTask class >> remove: anInstance [

	instances remove: anInstance
]

{ #category : #'class initialization' }
TODOTask class >> reset [
	instances := OrderedCollection new
]

{ #category : #accessing }
TODOTask >> done: aBoolean [
	done := aBoolean
]

{ #category : #initialization }
TODOTask >> initialize [

	super initialize.
	self done: false
]

{ #category : #testing }
TODOTask >> isDone [
	^ done
]

{ #category : #accessing }
TODOTask >> printOn: aStream [

	title
		ifNotNil:[ :t | aStream nextPutAll: t]
		ifNil: [ aStream nextPutAll: 'Todo' ]
]

{ #category : #saving }
TODOTask >> remove [ 	

	self class remove: self 
]

{ #category : #saving }
TODOTask >> save [ 	

	self class add: self 
]

{ #category : #accessing }
TODOTask >> title [
	^ title
]

{ #category : #accessing }
TODOTask >> title: aString [
	title := aString
]
