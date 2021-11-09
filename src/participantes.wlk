import conocimientos.*

class Participante{
	const conocimientos = #{}
	var commits
	var property pais
	
	method agregarConocimiento(conocomiento) {conocimientos.add(conocomiento) } 
	//Abstact 
	method esCape()
}

class Programador inherits Participante{
	override method esCape() = commits > 500
}

class Especialista inherits Participante{
	override method esCape() = conocimientos.size() > 2
}