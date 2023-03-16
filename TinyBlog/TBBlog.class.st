Class {
	#name : #TBBlog,
	#superclass : #Object,
	#instVars : [
		'posts',
		'uniqueInstance'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #TinyBlog
}

{ #category : #accessing }
TBBlog class >> current [ 

"responde a la instancia de TBRepository"

^ uniqueInstance ifNil:  [ uniqueInstance := self new ]
]

{ #category : #accessing }
TBBlog class >> initialize [ 
self reset
]

{ #category : #accessing }
TBBlog class >> reset [ 

uniqueInstance := nil
]

{ #category : #'as yet unclassified' }
TBBlog >> allBlogPosts [

^ posts
]

{ #category : #initialization }
TBBlog >> initialize [ 

super initialize.
posts := OrderedCollection new.
]

{ #category : #removing }
TBBlog >> removeAllPosts [

posts := OrderedCollection new
]

{ #category : #removing }
TBBlog >> size [ 

^ posts size
]

{ #category : #removing }
TBBlog >> writeBlogPost: aPost [

"Agrega un post a la lista de posts"

posts add: aPost
]
