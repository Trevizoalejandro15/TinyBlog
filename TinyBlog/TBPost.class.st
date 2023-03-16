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

{ #category : #actions }
TBPost >> isUnclassified [

^ self category = TBPost unclassifiedTag 
]

{ #category : #actions }
TBPost >> isVisible [

^ self visible
]
