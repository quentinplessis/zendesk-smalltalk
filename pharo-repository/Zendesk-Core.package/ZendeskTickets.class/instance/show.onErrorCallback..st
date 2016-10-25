display
show: ticketId onErrorCallback: onErrorCallback
	^ self show: ticketId client: (ZendeskRestClient default) onErrorCallback: onErrorCallback.