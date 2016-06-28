require('pry')

class String
  define_method(:numbers_to_words) do
    final_output = ""
    number = self.to_i()
    ones_digit = number.%(10)
    tens_digit = number./(10)

    ones_place_numbers = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    ones_place_integers = ones_place_numbers.keys()

    tens_place_numbers = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>
    "fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
    tens_place_integers = tens_place_numbers.keys()

    tens_place_integers.each() do |int|
      if tens_digit.==(int)
        tens_output = tens_place_numbers.fetch(int)
        if ones_digit.!=(0)
          tens_output.concat(" ")
        end
        final_output = tens_output
      end
    end
    ones_place_integers.each() do |int|
      if ones_digit.==(int)
        ones_output = ones_place_numbers.fetch(int)
        final_output.concat(ones_output)
      end
    end
    final_output
  end
end
