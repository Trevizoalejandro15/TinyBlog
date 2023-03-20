Class {
	#name : #TBScreenComponent,
	#superclass : #WAComponent,
	#instVars : [
		'header'
	],
	#category : #TinyBlog
}

{ #category : #'as yet unclassified' }
TBScreenComponent >> blog [

"Regresa el actual blog"

^ TBBlog current
]

{ #category : #hooks }
TBScreenComponent >> children [ 
"devuelve una colección de un elemento que es la instancia de TBHeaderComponent al 
que hace referencia la variable de instancia del encabezado ."
^ { header }
]

{ #category : #initialization }
TBScreenComponent >> createHeaderComponent [

^ TBHeaderComponent from: self

]

{ #category : #initialization }
TBScreenComponent >> initialize [ 

super initialize .

"almacenamos el header en una variable de instancia denominada header para no crear una instancia cada vez que se llame header"

header := self createHeaderComponent
]

{ #category : #'as yet unclassified' }
TBScreenComponent >> renderContentOn: html [ 

html render: header
]
