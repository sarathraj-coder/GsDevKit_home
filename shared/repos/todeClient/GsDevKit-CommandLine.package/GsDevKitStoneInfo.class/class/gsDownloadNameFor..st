accessing
gsDownloadNameFor: aGsVersionString
	Smalltalk platform isMacOS
		ifTrue: [ ^ 'GemStone64Bit' , aGsVersionString , '-i386.Darwin' ]
		ifFalse: [ 
			Smalltalk platform isUnix
				ifTrue: [ ^ 'GemStone64Bit' , aGsVersionString , '-x86_64.Linux' ]
				ifFalse: [ 
					Smalltalk platform isWindows
						ifTrue: [ ^ 'GemBuilderC' , aGsVersionString , '-x86.Windows_NT' ] ] ].
	^ ''