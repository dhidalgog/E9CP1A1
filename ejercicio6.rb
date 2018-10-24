class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def show
    print @name, @large, @medium, @small, @xsmall
    puts  " "
  end

  def average
    puts "Producto: #{@name} - Promedio: #{(@large + @medium + @small + @xsmall) / 4}"
  end

  #def nuevo_catalogo
  #  file = File.open('nuevo_catalogo.txt', 'a')
  #  file.puts "#{@name}, #{@large}, #{@medium}, #{@small}"
  #  file.close
  #end
end

class Nuevo_catalogo
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i

    file = File.open('nuevo_catalogo.txt', 'a')
    file.puts "#{@name}, #{@large}, #{@medium}, #{@small}"
    file.close
  end
end

products_list = []
products_list1 = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  products_list1 << Nuevo_catalogo.new(*ls)
end

products_list.each(&:show)
puts " "
products_list.each(&:average)
