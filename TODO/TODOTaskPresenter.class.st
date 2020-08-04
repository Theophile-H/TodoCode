Class {
	#name : #TODOTaskPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'task',
		'titlePresenter',
		'aTask'
	],
	#category : #'TODO-Application'
}

{ #category : #accessing }
TODOTaskPresenter >> accept [

	self task 
		title: titlePresenter text;
		save.
]

{ #category : #accessing }
TODOTaskPresenter >> initializeDialogWindow: 	aDialogWindowPresenter [

	aDialogWindowPresenter 
		title: 'New task';
		initialExtent: 350@120;
		addButton: 'Accept2' do: [ :dialog |
			self accept.
			dialog close ];
		addButton: 'Cancel' do: [ :dialog |
			dialog close ]
]

{ #category : #accessing }
TODOTaskPresenter >> initializePresenters [

	titlePresenter := self newTextInput.

	self layout: (SpBoxLayout newVertical 
						add: titlePresenter expand: false;
						yourself).
]

{ #category : #accessing }
TODOTaskPresenter >> task [
	^ task
]

{ #category : #accessing }
TODOTaskPresenter >> task: aTask [
	task := aTask.
	self updatePresenter
]

{ #category : #accessing }
TODOTaskPresenter >> updatePresenter [
	titlePresenter text: (aTask title ifNil: [ '' ])
]
