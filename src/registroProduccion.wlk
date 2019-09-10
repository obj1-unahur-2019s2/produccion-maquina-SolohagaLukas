object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	
	//esto no es lo mejor, pero sirve para practicar el any
	method algunDiaSeProdujo(cantidad) {
		return produccionPorDia.any({ pd => pd == cantidad})
	}
	
	//esta es la posta 
	method algunDiaSeProdujo_ok(cantidad) {
		return produccionPorDia.contains(cantidad)
	}
	
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	method valoresDeProduccionPares(){
		//quiero los que cumplen una condicion: filter
		return produccionPorDia.filter({numero => numero.even()})
	} 
	method valoresDeProduccionPares_largo(){
		return produccionPorDia.filter({ numero => numero % 2 == 0 })
	}
	method produccionEsAcotada(n1,n2) {
		//debe dar true si **todos** cumplen una condicion: all
		return produccionPorDia.all({numero => numero.between(n1, n2)})
	}
	method produccionesSuperioresA(cuanto) {
		//quiero los que cumplen una condicion: filter
		return produccionPorDia.filter ({numero => numero > cuanto})
	}
	method produccionesSumando(n) {
		//quiero la lista que se obtiene 
		//aplicando una operacion sobre cada elemento: map
		return produccionPorDia.map ({numero => numero + n})
	}
	method totalProducido() {
		//la suma total: sum
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion() {
		//el ultimo elemento: last
		//no interviene ninguna funcion
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera() {
		//cuantos elementos cumplen una condicion: count
		
		return produccionPorDia.count ({numero => numero > produccionPorDia.first()})
	}
}
