Class {
	#name : #TBBlogTest,
	#superclass : #TestCase,
	#instVars : [
		'blog',
		'post',
		'first',
		'previousRepository'
	],
	#category : #TinyBlog
}

{ #category : #running }
TBBlogTest >> setUp [ 
"Se agregan instrucciones para salvar tambien en la dataBase"
previousRepository := VORepository current.
VORepository setRepository: VOMemoryRepository new.

blog:= TBBlog current.

first := TBPost title: 'Un titulo' text: 'A text' category: 'First Category'.
blog writeBlogPost: first.

blog writeBlogPost: first .

post := (TBPost title: 'Otro titulo' text: 'Otro texto' category: 'Segunda Categoria') beVisible.
]

{ #category : #running }
TBBlogTest >> tearDown [ 
"Restauramos el objeto de la base de datos original"

VORepository setRepository: previousRepository 

]

{ #category : #running }
TBBlogTest >> testAddBlogPost [

blog writeBlogPost: post.
self assert: blog size equals: 2
]

{ #category : #running }
TBBlogTest >> testAllBlogPosts [

blog writeBlogPost: post.
self assert: blog allBlogPosts size equals: 2
]

{ #category : #running }
TBBlogTest >> testAllBlogPostsFromCategory [

self assert: (blog allBlogPostsFromCategory: 'Primera Categoria')
size equals: 0
]

{ #category : #running }
TBBlogTest >> testAllCategories [

blog writeBlogPost: post.

self assert: blog allCategories size equals: 2
]

{ #category : #running }
TBBlogTest >> testAllVisibleBlogPosts [

blog writeBlogPost: post.
self assert: blog allVisibleBlogPosts size equals: 1
]

{ #category : #running }
TBBlogTest >> testAllVisibleBlogPostsFromCategory [

self assert: (blog allVisibleBlogPostsFromCategory: 'Primera Categoria')
size equals: 0.

self assert: (blog allVisibleBlogPostsFromCategory: 'Segunda Categoria')
size equals: 0
]

{ #category : #running }
TBBlogTest >> testRemoveAllBlogPosts [

blog removeAllPosts .

self assert: blog size equals: 0
]

{ #category : #running }
TBBlogTest >> testSize [ 

self assert: blog size equals:1
]

{ #category : #running }
TBBlogTest >> testUnclassifiedBlogPosts [

self assert: (blog allBlogPosts select: [:p | p isUnclassified ])
size equals: 0
]
