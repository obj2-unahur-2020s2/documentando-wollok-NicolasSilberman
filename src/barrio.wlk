class Barrio {

	const property elementos = [] /*lista de objetos */

	/*no retorna nada */ method agregarElemento(elemento) { /*elemento: objeto */
		elementos.add(elemento)
	}

	/*no retorna nada*/ method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	/*retorna objetos que cumplen condicion esBueno */ method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	/*retorna objetos que no cumplen condicion esBueno */ method elementosMalos() = elementos.count{ e => not e.esBueno() }

	/*retorna booleano */ method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

