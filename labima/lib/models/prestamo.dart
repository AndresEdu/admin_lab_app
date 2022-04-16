/*
  ID_prestamo: id_prestamo int 
  encargado: eid int 
  solicitante: sid int
  tipoSolicitante: int // Nota: 1 - Alumno, 2 - Profesor, 3 - Investigador
  
  maquina: mid // Si el prestamo no requiere maquina este valor es nulo
  piezas: map<Pieza, int> // El primer int es el id de la pieza y el segundo 
                           la cantidad solicitada.

  fechaPrestamo: dateTime
  horaInicial: dateTime
  horaLimite: dateTime                        
*/