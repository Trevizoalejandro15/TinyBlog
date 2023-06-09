Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #testing }
TBPost class >> isVoyageRoot [

"Indica que la instancia de esta clase esta en el top nivel de documentos de noSQL dataBase"

^ true
]

{ #category : #'as yet unclassified' }
TBPost class >> title: aTitle text: aText [

^ self new 
title: aTitle;
text: aText;
yourself
]

{ #category : #'as yet unclassified' }
TBPost class >> title: aTitle text: aText category: aCategory [ 

^ self new 
title: aTitle;
text: aText;
category: aCategory;
yourself
]

{ #category : #'as yet unclassified' }
TBPost class >> unclassifiedTag [

^ 'Unclassified'
]

{ #category : #actions }
TBPost >> beVisible [

self visible: true
]

{ #category : #accessing }
TBPost >> category [
	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
TBPost >> date [
	^ date
]

{ #category : #accessing }
TBPost >> date: anObject [
	date := anObject
]

{ #category : #initialization }
TBPost >> initialize [ 

super initialize.

self category: TBPost unclassifiedTag .

self date: Date today.

self notVisible 
]

{ #category : #actions }
TBPost >> isUnclassified [

^ self category = TBPost unclassifiedTag 
]

{ #category : #actions }
TBPost >> isVisible [

^ self visible
]

{ #category : #actions }
TBPost >> notVisible [

self visible: false
]

{ #category : #accessing }
TBPost >> text [
	^ text
]

{ #category : #accessing }
TBPost >> text: anObject [
	text := anObject
]

{ #category : #accessing }
TBPost >> title [
	^ title
]

{ #category : #accessing }
TBPost >> title: anObject [
	title := anObject
]

{ #category : #accessing }
TBPost >> visible [
	^ visible
]

{ #category : #accessing }
TBPost >> visible: anObject [
	visible := anObject
]
