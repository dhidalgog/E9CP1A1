=begin
rescue => exception
  
end
Crea una clase llamada Dog cuyo constructor reciba como argumento un hash 
con la siguiente estructura:

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. 
Luego generar un método llamado ladrar que, mediante interpolación, imprima 
"Beethoven está ladrando!"
=end

class Dog
  def initialize(hashito)
    @nombre = hashito[:nombre]
    @raza = hashito[:raza]
    @color = hashito[:color]
  end

  def braf
    puts "#{@nombre} esta ladrando!! braf braf braf!!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
perro1 = Dog.new(propiedades)
perro1.braf
