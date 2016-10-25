private
createRequest
	| request authorizationString |
	
	authorizationString := '{1}/token:{2}' format: { ZendeskSettings default emailAddress. ZendeskSettings default token }.
	
	request := ZnRequest empty.
	request setAuthorization: ('Basic ', (ZnUtils encodeBase64: authorizationString )).
	
	^ request