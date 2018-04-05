module InvertedNumber

  def input
    puts "Enter a number"
    @number = gets
    @number1 = @number.reverse
    @change = {'6' => '9','9' => '6'}
    @number1 = @number1.gsub(/6|9/){|match| @change[match]}
    @number1 = @number1.to_i
    @number = @number.to_i
    #puts "#{@number1}"
  end
  def find
    if (((2..5).member?(@number) == false )&&(@number != 7))
      if(@number === @number1)
        puts "number is vertically inverted"
      else
        puts "number is not vertically inverted"
      end
    else
      puts "number is not vertically inverted"
    end
  end
end

class Invert
  include InvertedNumber
end

samp1 = Invert.new
samp1.input
samp1.find