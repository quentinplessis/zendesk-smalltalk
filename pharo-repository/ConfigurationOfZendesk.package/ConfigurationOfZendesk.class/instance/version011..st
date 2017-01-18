versions
version011: spec 
	<version: '0.1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.1.1'.
		spec author: 'QuentinPlessis'.
		spec timestamp: '1/18/2017 11:22'.
		
		spec package: 'Neo-JSON-Core' with: 'Neo-JSON-Core-SvenVanCaekenberghe.33'.
		spec
			baseline: 'Zendesk' with: [ 
				spec repository:'github://quentinplessis/zendesk-smalltalk:v0.1.1/pharo-repository' ];
			import: 'Zendesk' ].