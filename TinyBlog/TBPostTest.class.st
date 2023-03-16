Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #TinyBlog
}

{ #category : #tests }
TBPostTest >> testPostIsCreatedCorrectly [

|post|

post:= TBPost 

title: 'Welcome to TinyBlog'
text: 'TinyBlog es un pequeño blog hecho con pharo'.

self assert: post title equals: 'Welcome to TinyBlog'.
self assert: post text equals: 'TinyBlog es un pequeño blog hecho con pharo'.

]

{ #category : #tests }
TBPostTest >> testWithoutCategoryIsUnclassified [

|post|

post:= TBPost 

title: 'Welcome to TinyBlog'
text: 'TinyBlog es un pequeño blog hecho con pharo'.

self assert: post title equals: 'Welcome to TinyBlog'.
self assert: post category equals: TBPost unclassifiedTag.
self deny: post isVisible.

]
