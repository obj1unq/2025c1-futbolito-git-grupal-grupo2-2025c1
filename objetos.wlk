/** First Wollok example */
import wollok.game.*

object lionel {
	const miPelota = pelota
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method taquito(){
		self.validarPosicion()
		self.hacerTaco()
	}

	method validarPosicion(){
		if (!(position == miPelota.position())){
			self.error("No puedo hacer un taco!")
		}
	}

	method hacerTaco(){
		miPelota.position(
					game.at(
						0.max(miPelota.position().x()-2),
						miPelota.position().y()))
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

}
