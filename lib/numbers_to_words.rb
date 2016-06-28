require('pry')

class String
  define_method(:numbers_to_words) do
    final_output = ""
    number = self.to_i()
    ones_digit = number.%(10)
    tens_digit = number./(10).%(10)
    hundreds_digit = number./(100).%(10)
    thousands_digit = number./(1000).%(10)
    tens_of_thousands_digit = number./(10000).%(10)
    hundreds_of_thousands_digit = number./(100000).%(10)

    # Ones Place Object
    ones_place_numbers = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
    ones_place_integers = ones_place_numbers.keys()

    # Teens Place Object
    teens_numbers = {0=>"ten", 1=>"eleven", 2=>"twelve", 3=>"thirteen", 4=>"fourteen", 5=>"fifteen", 6=>"sixteen", 7=>"seventeen", 8=>"eighteen", 9=>"nineteen"}
    teens_integers = teens_numbers.keys()

    # Tens Place Object
    tens_place_numbers = {2=>"twenty", 3=>"thirty", 4=>"forty", 5=>
    "fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}
    tens_place_integers = tens_place_numbers.keys()

    #Zero Case
    if number.==(0)
      final_output = "zero"
    end

    # Hundreds of Thousands
    ones_place_integers.each() do |int|
      if hundreds_of_thousands_digit.==(int)
        hundreds_of_thousands_output_number = ones_place_numbers.fetch(int).dup()
        hundreds_of_thousands_output = hundreds_of_thousands_output_number.concat(" hundred")
        if tens_of_thousands_digit.!=(0)
          hundreds_of_thousands_output.concat(" ")
        elsif number.%(100000).==(0)
          hundreds_of_thousands_output.concat(" thousand")
        end
        final_output.concat(hundreds_of_thousands_output)
      end
    end

    # Tens of Thousands
    if tens_of_thousands_digit.!=(1)
      tens_place_integers.each() do |int|
        if tens_of_thousands_digit.==(int)
          tens_of_thousands_output = tens_place_numbers.fetch(int).dup()
          if thousands_digit.!=(0)
            tens_of_thousands_output.concat(" ")
          elsif number.%(1000).!=(0)
              tens_of_thousands_output.concat(" thousand ")
          else
            tens_of_thousands_output.concat(" thousand")
          end
        final_output.concat(tens_of_thousands_output)
        end
      end
    end

    # 10000-19999
    if tens_of_thousands_digit.==(1)
      teens_integers.each() do |int|
        if thousands_digit.==(int)
          teens_thousands_output = teens_numbers.fetch(int).dup()
          if number.%(1000).!=(0)
              teens_thousands_output.concat(" thousand ")
          else
            teens_thousands_output.concat(" thousand")
          end
        final_output.concat(teens_thousands_output)
        end
      end
    end

    # Thousands
    if tens_of_thousands_digit.!=(1)
      ones_place_integers.each() do |int|
        if thousands_digit.==(int)
          thousands_output_number = ones_place_numbers.fetch(int).dup()
          thousands_output = thousands_output_number.concat(" thousand")
          if number.%(1000).!=(0)
            thousands_output.concat(" ")
          end
          final_output.concat(thousands_output)
        end
      end
    end


    # Hundreds
    ones_place_integers.each() do |int|
      if hundreds_digit.==(int)
        hundreds_output_number = ones_place_numbers.fetch(int).dup()
        hundreds_output = hundreds_output_number.concat(" hundred")
        if number.%(100).!=(0)
          hundreds_output.concat(" ")
        end
        final_output.concat(hundreds_output)
      end
    end

    # Teens
    if tens_digit.==(1)
      teens_integers.each() do |int|
        if ones_digit.==(int)
          teens_output = teens_numbers.fetch(int).dup()
          final_output.concat(teens_output)
        end
      end
    end

    # Tens Place
    if tens_digit.!=(1)
      tens_place_integers.each() do |int|
        if tens_digit.==(int)
          tens_output = tens_place_numbers.fetch(int).dup()
          if ones_digit.!=(0)
            tens_output.concat(" ")
          end
        final_output.concat(tens_output)
        end
      end
    end

    # Ones Place
    if tens_digit.!=(1)
      ones_place_integers.each() do |int|
        if ones_digit.==(int)
          ones_output = ones_place_numbers.fetch(int).dup()
          final_output.concat(ones_output)
        end
      end
    end

    final_output
  end
end
