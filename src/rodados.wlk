class Corsa{
	var property color
	method capacidad()=4
	method velocidad()=150
	method peso()=1300
}

class Kwid{
	var property conTanqueAdicional= false
	method capacidad() = if(conTanqueAdicional){3}else{4}
	method velocidad() = if(conTanqueAdicional){110}else{120}
	method peso() = if(conTanqueAdicional){1350}else{1200}
	method color() = "azul"
}

object trafic{
	var property interior
	var property motor
	method configurar(unInterior,unMotor){
		interior=unInterior
		motor=unMotor
	}
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method peso() = interior.peso() + motor.peso() + 4000
	method color() = "blanco"
}

object motorBataton{
	method peso()=500
	method velocidad()=80
}

object motorPulenta{
	method peso()=800
	method velocidad()=130
}

object interiorComodo{
	method peso()=700
	method capacidad()= 5
}

object interiorPopular{
	method peso()=1000
	method capacidad()=12
}

class AutosEspeciales{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}