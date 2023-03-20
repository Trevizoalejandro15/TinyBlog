Class {
	#name : #TBAdminComponent,
	#superclass : #TBScreenComponent,
	#category : #TinyBlog
}

{ #category : #initialization }
TBAdminComponent >> createHeaderComponent [ 

^ TBAdminHeaderComponent from: self
]

{ #category : #'as yet unclassified' }
TBAdminComponent >> goToPostListView [

self answer
]

{ #category : #'as yet unclassified' }
TBAdminComponent >> renderContentOn: html [ 
	super renderContentOn: html.
	html tbsContainer: [ html heading:  'Blog Admin'. html horizontalRule]
]
