"
TODOApplication new run.
"
Class {
	#name : #TODOApplication,
	#superclass : #SpApplication,
	#category : #'TODO-Domain'
}

{ #category : #running }
TODOApplication >> run [ 
	"self new run"
	
	(self new: TODOListPresenter) openWithSpec 
]
