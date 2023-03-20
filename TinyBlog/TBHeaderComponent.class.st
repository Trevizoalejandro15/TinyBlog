Class {
	#name : #TBHeaderComponent,
	#superclass : #WAComponent,
	#instVars : [
		'component'
	],
	#category : #TinyBlog
}

{ #category : #'instance creation' }
TBHeaderComponent class >> from: aComponent [ 

^ self new
component: aComponent ;
yourself
]

{ #category : #accessing }
TBHeaderComponent >> component [
	^ component
]

{ #category : #accessing }
TBHeaderComponent >> component: anObject [
	component := anObject
]

{ #category : #rendering }
TBHeaderComponent >> renderBrandOn: html [ 

html tbsNavbarHeader: [ html tbsNavbarBrand url: self application url;
	with: 'TinyBlog 2.0' ]
]

{ #category : #rendering }
TBHeaderComponent >> renderButtonsOn: html [ 

self renderSimpleAdminButtonOn: html
]

{ #category : #rendering }
TBHeaderComponent >> renderContentOn: html [ 

html tbsNavbar beDefault; with: [
			html tbsContainer: [
										self renderBrandOn: html.
										self renderButtonsOn: html
]]
]

{ #category : #rendering }
TBHeaderComponent >> renderSimpleAdminButtonOn:html [

html form: [
html tbsNavbarButton
	tbsPullRight;	
	callback: [ component goToAdministrationView ];
	with: [
		html tbsGlyphIcon iconListAlt.
	html text: ' Admin View' ]]

]
