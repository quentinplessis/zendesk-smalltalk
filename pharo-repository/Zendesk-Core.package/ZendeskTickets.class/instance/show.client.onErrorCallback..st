display
show: ticketId client: client onErrorCallback: onErrorCallback
	| response url |
	
	url := self resourceDisplayUrl: ticketId.
	
	[ response := client httpGet: url ]
		on: NetworkError
		do: [ :ex |
			onErrorCallback value.
			^ nil
		].
	
	^ NeoJSONObject fromString: response entity string.