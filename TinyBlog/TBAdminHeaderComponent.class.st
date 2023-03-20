Class {
	#name : #TBAdminHeaderComponent,
	#superclass : #TBHeaderComponent,
	#category : #TinyBlog
}

{ #category : #rendering }
TBAdminHeaderComponent >> renderButtonsOn: html [ 

html form: [ self renderDisconnectButtonOn: html ]
]

{ #category : #rendering }
TBAdminHeaderComponent >> renderDisconnectButtonOn: html [ 

html tbsNavbarButton 
		tbsPullRight;
		callback: [ component goToPostListView ];
		with: [ html text: ' Desconectarse   '. 
				  html tbsGlyphIcon iconLogout  ]
]
