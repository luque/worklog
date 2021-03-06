rendering
renderReferencesOn: html
	self references isEmptyOrNil ifTrue: [ ^ self ].
	
	"html heading level: 4; with: 'References'."
	self references do: [ :each | 
		html tbsThumbnail 
			class: 'reference';
			with: [ 
				html table: [ 
					html tableRow: [ 
						html tableData class: 'col-image'; with: [ 
							html anchor 
								url: each url;
								target: '_new';
								with: [ html image url: each thumbnailUrl ]].
						html tableData class: 'col-description'; with: [ 
							html heading level: 5; with: each title. 
							html anchor url: each url; target: '_new'; with: each url]]]]]