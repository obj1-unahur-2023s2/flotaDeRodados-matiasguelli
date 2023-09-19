import rodados.*

class Dependencia{
	var property cantidadEmpleado =0
	const rodados=[]
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	method pesoTOtalFlota(){
		return rodados.sum({rodado=>rodado.peso()})
	}
	method todosSuperanXVelocidad(velocidad){
		return rodados.all({r=>r.velocidad()>=velocidad})
	}
	
	method estaBienEquipada(){
		return rodados.size()>=3 && self.todosSuperanXVelocidad(100)
	}
	method capacidadTotalEnColor(color){
		return (self.obtenerRodadoDeColor(color)).sum({r=>r.capacidad()})
	}
	
	method obtenerRodadoDeColor(color) {
		return rodados.filter({r=>r.color()==color})
	}
	method colorRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	method rodadoMasRapido(){
		if (rodados.isEmpty())
			self.error("no se puede calcular el maximo")
		return rodados.max({r=>r.velocidad()})
	}
	method capacidadDeLaFlota(){
		return rodados.sum({r=>r.capacidad()})
	}
}
