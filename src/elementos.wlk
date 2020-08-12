class Hogar {

	var property nivelMugre /* nivelMugre: numero */
	var property confort /* confort: numero */

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	/*retorna un booleano*/ method esBueno() = nivelMugre <= confort / 2 

	/*no retorna nada */method fueAtacado(plaga) { /*plaga: objeto */
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud /*nivelSalud: numero */

	/*no retorna nada */method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	/*retorna booleano*/ method esBueno() = nivelSalud > 250

}

class Huerta {

	var property capacidadProduccion /*capacidadProduccion: numero */

	/*retorna booleano */ method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}

	/*no retorna nada */ method fueAtacado(plaga) { /*plaga: objeto */
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima /*produccionMinima: numero */

}

