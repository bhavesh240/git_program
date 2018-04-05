module InvertedNumber

  def input_number
    puts "Enter Starting element of the range"
    @number1 = gets.to_i
    puts "Enter last element of the range larger than first one"
    @number2 = gets.to_i
  end
  
  def count
    if ((@number1 < @number2)&&(@number1 >= 0)&&(@number2 >= 0))
      @change = {'6' => '9','9' => '6'}
      @elements = (@number1..@number2).to_a
      @elements = @elements.delete_if {|x| x.digits.include?(2)||x.digits.include?(3)||x.digits.include?(4)||x.digits.include?(5)||x.digits.include?(7)}    
      @reverse_array = @elements 
      @reverse_array = @reverse_array.collect{|x| x=x.to_s.reverse.gsub(/6|9/){|match| @change[match]}}
      @reverse_array = @reverse_array.collect{|x| x= x.to_i}
      i, @inverted_counter = 0, 0
      @reverse_array.each do |x|
        if (@elements[i] === @reverse_array[i])
          @inverted_counter += 1
        end
        i += 1
      end
      puts "Total vertically inverted numbers = #{@inverted_counter}"
    else
      puts "Input correct Range and Try again"
    end
  end
end

class Invert
  include InvertedNumber
end

invert1 = Invert.new
invert1.input_number
invert1.count