accessing
deployMode
	^ self at: #deployMode ifAbsentPut: [ 'development' ]