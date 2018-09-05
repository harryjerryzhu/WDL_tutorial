workflow myWorkflow{
	String hello
	call getLastName{
	input:Zhaohu=hello
	}
	call getFirstName{
		input:Firstpart=getLastName.out
	}
}

task getLastName{
	String Zhaohu
	String LastName

	command{
		echo ${Zhaohu},${LastName}
	}
	output{
		String out="${Zhaohu},${LastName}"
	}
}
task getFirstName{
	String Firstpart
	String FirstName

	command{
		echo ${Firstpart},${FirstName}
	}
	output{
		String out="${Firstpart} ${FirstName}"
	}

}

