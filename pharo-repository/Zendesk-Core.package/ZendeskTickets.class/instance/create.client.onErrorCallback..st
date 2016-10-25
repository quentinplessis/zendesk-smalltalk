creation
create: ticketContents client: client onErrorCallback: onErrorCallback
	| contents response |
	
	contents := NeoJSONObject new.
	contents at: 'ticket' put: ticketContents.
	
	[ response := client httpPost: self resourceCreationUrl contents: contents ]
		on: NetworkError
		do: [ :ex |
			onErrorCallback value.
		]
	