creation
create: ticketContents client: client onErrorCallback: onErrorCallback
	| contents response |
	
	contents := NeoJSONObject new.
	contents at: 'ticket' put: ticketContents.
	
	ZendeskSettings default deployMode = 'development' ifTrue: [
		ticketContents at: 'subject' put: '[Test] ',(ticketContents at: 'subject') ].
	
	[ response := client httpPost: self resourceCreationUrl contents: contents ]
		on: NetworkError
		do: [ :ex |
			onErrorCallback value.
		]
	