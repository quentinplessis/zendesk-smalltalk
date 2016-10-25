creation
create: ticketContents onErrorCallback: onErrorCallback
	self create: ticketContents client: (ZendeskRestClient default) onErrorCallback: onErrorCallback.