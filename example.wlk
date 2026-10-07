class Armas{
  method valorDeAtaque() 
}


class ArmasDeFilo inherits Armas {
  const filo
  const longitud
  override method valorDeAtaque() {
    return filo * longitud  
  }
}


class ArmasContundentes inherits Armas{
  const pesoDelArma 
  override method valorDeAtaque() {
    return pesoDelArma
  }
}


object Casco{
  method armaduraQueOtorga(gladiador) {
    return 10
  }
}
object Escudos{
  method armaduraQueOtorga(gladiador) {
    return 5 + (gladiador.destreza() * 0.1)
  }
}

class Gladiador{
  var vida = 100 

  method atacar(gladiador) {
    gladiador.recibirDaño(self)
  }
  method recibirDaño(gladiador) {
    vida = vida - self.poderDeAtaque() - gladiador.defensa()
  }
  method pelearCon(gladiador) {
    self.atacar(gladiador)
    gladiador.atacar(self)
  }
  method defensa()
}

class Mirmillones inherits Gladiador{
  var arma
  var property fuerzaPromedio
  var armadura

  method destreza() = 15

  method cambiarArmadura(otraArmadura) {
    armadura=otraArmadura
  }

  method poderDeAtaque() = fuerzaPromedio + arma.valorDeAtaque()
  override method defensa() = armadura.armaduraQueOtorga(self) + self.destreza()
  method crearGrupo() {
    return new Grupo(nombre = "mirmillolandia",miembros =0,miembros = [self,gladiador])
  }
}

class Dimachaerus inherits Gladiador{
  const arma *[]
  var destreza

  override method atacar(gladiador){
    super(gladiador)
    destreza =+ 1
  } 
  method fuerza() = 10 
  method poderDeAtaque() = self.fuerza() + arma.sum({a => a.valorDeAtaque()})
  override method defensa() = destreza/2 
  method crearGrupo(gladiador) {
    return new Grupo(nombre="D+" + self.fuerzaDeGrupo(gladiador), miembros=[self,gladiador])
  }
  method fuerzaDeGrupo(gladiador) {
    return self.poderDeAtaque() + gladiador.poderDeAtaque()
  }
}

class Grupo{
  const nombre
  var peleas = 0
  const miembros = []

  method agregarMiembro(gladiador) {
    miembros.add(gladiador)
  }
  method quitarMiembro(gladiador) {
    miembros.remove(gladiador)
  }
}