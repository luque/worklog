rendering
renderContentOn: html 
	html tbsRow with: [ 
		html tbsColumn 
			mediumSize: 6;
			mediumOffset: 3;
			with: [
				self renderHeaderOn: html.
				self renderPostsOn: html]]