defaults
defaultBaseUrl
	^ ZnUrl fromString: ('https://{1}.zendesk.com/api/{2}' format: { self settings subdomain. self settings apiVersion. } )