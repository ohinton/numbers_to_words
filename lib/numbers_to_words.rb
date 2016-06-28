require('pry')

class String
  define_method(:numbers_to_words) do
    output = ""
    number = self.to_i()
    single_digit_numbers = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    single_digit_integers = single_digit_numbers.keys()
    single_digit_integers.each() do |int|
      if number.==(int)
        output = single_digit_numbers.fetch(int)
      end
    end
    output
  end
end
