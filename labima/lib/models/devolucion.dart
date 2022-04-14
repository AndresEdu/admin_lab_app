/*
  ID_prestamo: id_prestamo int 
  encargado: eid int 
  solicitante: sid int
  tipoSolicitante: int // Nota: 1 - Alumno, 2 - Profesor, 3 - Investigador
  
  maquina: mid // Si el prestamo no requiere maquina este valor es nulo
  piezas: map<int, List<int>(2)> 
  // El primer int es el id de la pieza, el primer int
  // de la lista es la cantidad esperada y el segundo es la cantidad
  // devuelta.

  fechaDevolucion: List<DateTime>
  devolucionCompleta: bool
*/