import paisesEmpresas.*
object cumbre {
	
	const paisesAuspiciantes = #{}
	const participantes = #{}
	
	method agregarAuspiciante(pais) {paisesAuspiciantes.add(pais)}
	
	method registrarParticipante(persona){ participantes.add(persona) }
	
	method esConflictivo(pais) = paisesAuspiciantes.any{ p => p.tieneConflictoCon(pais)}
	method paisesParticipantes() = participantes.map{ participante => participante.pais() }.asSet()
	method cantidadParticipantesDe(pais) = participantes.count{ participante => participante.pais() == pais}
	method paises() = participantes.map{ p => p.pais() }.asSet()
	method paisConMasParticipantes() = self.paises().max{ pais => self.cantidadParticipantesDe(pais) }
	method participantesExtranjeros() = participantes.filter{ p => !paisesAuspiciantes.contains(p.pais()) }
	method esRelevante() = participantes.all { p => p.esCape() }
	
	
	
	
	
}
