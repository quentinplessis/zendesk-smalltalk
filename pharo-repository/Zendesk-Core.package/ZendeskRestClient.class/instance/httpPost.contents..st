http-methods
httpPost: aUri contents: entity
	| request |
	
	request := self createRequest.
	request method: #POST.
	request url: aUri.
	entity isEmptyOrNil ifFalse:[ request entity: ((ZnEntity with: entity asString) contentType: 'application/json') ].
	
	self client request: request.
	client execute.
	^ client response