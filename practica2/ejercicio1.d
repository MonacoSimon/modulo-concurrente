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
  area4: AreaP (3,21,3,30)
  area5: AreaP (4,31,4,40)
  area6: AreaP (5,41,5,50)
  area7: AreaP (6,51,6,60)
  areaJefe: AreaP (2,1,2,1)
robots
  robot jefe
  variables
    quien,quienMax:numero
    cant:numero
    max,maxNom:numero
  comenzar
    max:=0
    EnviarMensaje(1,r1)
    EnviarMensaje(2,r2)
    EnviarMensaje(3,r3)
    EnviarMensaje(4,r4)
    EnviarMensaje(5,r5)
    EnviarMensaje(6,r6)
    repetir 6
      RecibirMensaje (quien, *)
      si (quien = 1)
        RecibirMensaje(cant,r1)
      sino
        si (quien = 2)
          RecibirMensaje(cant,r2)
        sino
          si (quien = 3)
            RecibirMensaje(cant,r3)
          sino
            si (quien = 4)
              RecibirMensaje(cant,r4)
            sino
              si (quien = 5)
                RecibirMensaje(cant,r5)
              sino
                si (quien = 6)
                  RecibirMensaje(cant,r6)
      si (cant > max)
        max:=cant
        quienMax:=quien
    Informar(max)
    Informar(quienMax)
    
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
variables
  r1: robot1
  r2: robot1
  r3: robot1
  r4: robot1
  r5: robot1
  r6: robot1
  rJefe: jefe
comenzar
  AsignarArea(r1, area1)
  AsignarArea(r2, area2)
  AsignarArea(r3, area4)
  AsignarArea(r4, area5)
  AsignarArea(r5, area6)
  AsignarArea(r6, area7)
  AsignarArea (rJefe, areaJefe)
  Iniciar (rJefe, 2,1)
  Iniciar(r1, 1,1)
  Iniciar(r2, 2,11)
  Iniciar(r3, 3,21)
  Iniciar(r4,4,31)
  Iniciar(r5,5,41)
  Iniciar(r6,6,51)
fin