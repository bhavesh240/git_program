class Box
  def initialize(width,height)
    @width = width
    @height = height
  end

  def getWidth(value)
    @width = value
  end

  def getHeight(value)
    @height = value
  end

  def print_value
    puts "width = #{@width}"
    puts "height = #{@height}"
  end
end

box = Box.new(10,20)
box.print_value 
box.freeze
box.getWidth(30)
box.getHeight(40)
box.print_value 
