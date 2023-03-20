Class {
	#name : #TBAplicationRootComponent,
	#superclass : #WAComponent,
	#instVars : [
		'main'
	],
	#category : #TinyBlog
}

{ #category : #testing }
TBAplicationRootComponent class >> canBeRoot [ 

^ true
]

{ #category : #initialization }
TBAplicationRootComponent class >> initialize [ 

"auto inicializar"

|app|

app:= WAAdmin register: self asApplicationAt: 'TinyBlog2.o'.

app addLibrary: JQDeploymentLibrary ;
	addLibrary: JQUiDeploymentLibrary ;
	addLibrary: TBSDeploymentLibrary 
]

{ #category : #rendering }
TBAplicationRootComponent >> children [ 

^  { main }
]

{ #category : #initialization }
TBAplicationRootComponent >> initialize [ 

super initialize .

main:= TBPostsListComponent  new
]

{ #category : #accessing }
TBAplicationRootComponent >> main: aComponent [

main:= aComponent 
]

{ #category : #rendering }
TBAplicationRootComponent >> renderContentOn: html [

html render: main
]

{ #category : #rendering }
TBAplicationRootComponent >> updateRoot: anHtmlRoot [

super updateRoot: anHtmlRoot .

anHtmlRoot beHtml5 .

anHtmlRoot title: 'TinyBlog 2.0' "Este mensaje cambia el titulo que sale hasta arriba en las ventanas"
]
