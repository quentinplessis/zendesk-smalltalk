versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'QuentinPlessis'.
		spec timestamp: '10/25/2016 11:03'.
		
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.33'.
		spec
			baseline: 'Zendesk' with: [ 
				spec repository:'github://quentinplessis/zendesk-smalltalk:v0.1/pharo-repository' ];
			import: 'Zendesk' ].
