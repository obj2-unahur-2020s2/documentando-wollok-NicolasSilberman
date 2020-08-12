class Plaga {
	var property poblacion //poblacion : numero
	
/* devuelve un booleano */	method transmiteEnfermedad() = poblacion >= 10 
	
/* no devuelve nada */	method atacar(elemento){ /* elemento: objeto */ 
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio /* pesoPromedio: numero */ 

/*devuelve un numero */	method nivelDanio() {
		return poblacion / 2
	}

/*devuelve un booleano */	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}

/*no devuelve nada */	override method atacar(elemento) { /*elemento: objeto */
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

/*devuelve numero */	method nivelDanio() {
		return poblacion
	}

/*devuelve booleano */	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

/*devuelve numero */	method nivelDanio() = poblacion * 2

}

class PlagaGarrapatas inherits PlagaPulgas {

/*no devuelve nada */	override method atacar(elemento) /*elemento: objeto */ {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

