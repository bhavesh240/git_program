class Box
  @@count = 0
  
  def initialize(l,b,h)
    @length = l
    @breadth = b
    @height = h
    @@count += 1
  end
  
  def volume
    @volume = @length*@breadth*@height
    puts "VOLUME : #{@volume}"
  end
  
  def counter
    puts "count = #{@@count}"
  end
end

samp = Box.new(10,10,10)
samp.volume
samp2 = Box.new(10,12,10)
samp2.volume
samp2.counter
samp.counter

