programa ejemplo
procesos
  proceso juntarFlor(ES cantFlor: numero)
  comenzar
    mientras(HayFlorEnLaEsquina)
      tomarFlor
      cantFlor:=cantFlor+1
  fin
  proceso recorrer(ES cantFlor:numero)
  comenzar
    repetir 9
      juntarFlor(cantFlor)
      mover
    juntarFlor(cantFlor)
  fin
areas
  area1: AreaP (1,1,1,10)
  area2: AreaP (2,11,2,20)
  area3: AreaP (2,1,2,1)
robots
  robot jefe
  variables
    quien,quien1,quien2:numero
    cant1,cant2:numero
  comenzar
    EnviarMensaje(1,r1)
    EnviarMensaje(2,r2)
    repetir 2
      RecibirMensaje (quien, *)
      si (quien = 1)
        RecibirMensaje(cant1, r1)
        quien1:=quien
      sino 
        RecibirMensaje(cant2, r2)
        quien2:=quien
    si (cant1 > cant2)
      Informar(quien1)
    sino 
      Informar(quien2)
    
  fin
  robot robot1
  variables
    cantFlor:numero
    cantR2:numero
    quienSoy:numero
  comenzar
    cantFlor:=0
    RecibirMensaje(quienSoy,rJefe)
    recorrer(cantFlor)
    EnviarMensaje(quienSoy, rJefe)
    EnviarMensaje (cantFlor,rJefe)
  fin
  robot robot2
  variables
    cantFlor:numero
    cantR1:numero
    quienSoy:numero
  comenzar
    cantFlor:=0
    RecibirMensaje(quienSoy,rJefe)
    recorrer(cantFlor)
    EnviarMensaje(quienSoy, rJefe)
    EnviarMensaje (cantFlor,rJefe)
  fin
variables
  r1: robot1
  r2: robot2
  rJefe: jefe
comenzar
  AsignarArea(r1, area1)
  AsignarArea(r2, area2)
  AsignarArea (rJefe, area3)
  Iniciar(r1, 1,1)
  Iniciar(r2, 2,11)
  Iniciar (rJefe, 2,1)
fin