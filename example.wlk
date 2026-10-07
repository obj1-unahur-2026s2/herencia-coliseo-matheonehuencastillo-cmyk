class ArmasDeFilo{
  method filo()
  method longitud()
  method valorDeAtaque() {
    return self.filo() * self.longitud()  
  }
}

class Espadas inherits ArmasDeFilo{
  override method filo() {
    return 0.5
  }
  override method longitud(){
    return 85
  }
}

class Dagas inherits ArmasDeFilo{
  override method filo() {
    return 0.25
  }
  override method longitud(){
    return 30
  }
}

class Hachas inherits ArmasDeFilo{
  override method filo() {
    return 0.75
  }
  override method longitud(){
    return 60
  }
}

class ArmasContundentes{
  method pesoDelArma() 
  method valorDeAtaque() {
    return self.pesoDelArma()
  }
}

class Mazas inherits ArmasContundentes{
  override method pesoDelArma() {
    return 2
  }
}

class Martillos inherits ArmasContundentes{
  override method pesoDelArma() {
    return 0.5
  }
}

class Armadura {
  var gladiadorPortador
  method armaduraQueOtorga() 
}

class Casco inherits Armadura{
  override method armaduraQueOtorga() {
    return 10
  }
}
class Escudos inherits Armadura{
  override method armaduraQueOtorga() {
    return 5 + (gladiadorPortador.destreza() * 0.1)
  }
}

class Gladiadores{
  method vida() = 100
  method armadura()
  method destreza() 
}

class Mirmillones inherits Gladiadores{

}