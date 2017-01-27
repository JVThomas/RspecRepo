class CaesarCipher
  def initialize(shift)
    @shift_value = shift
  end

  def encode(string)
    string_array = string.upcase.split("")
    string_array.map do |char|
      if char.ord >= 65 && char.ord <= 90
        boundary_check = 90 - char.ord
        if boundary_check < @shift_value
          char = (64 + (@shift_value - boundary_check)).chr
        else
          char = (char.ord + @shift_value).chr
        end
      end
      char
    end.join("")
  end

  def decode(string)
    string_array = string.upcase.split("")
    string_array.map do |char|
      if char.ord >= 65 && char.ord <= 90
        boundary_check = char.ord - 65
        if boundary_check < @shift_value
          char = (90 - (@shift_value - boundary_check -1)).chr
        else
          char = (char.ord - @shift_value).chr
        end
      end
      char
    end.join("")
  end

end

cipher = CaesarCipher.new(5)
value = cipher.encode("IT'S A SHIFT CIPHER!!")
decode = cipher.decode("NY'X F XMNKY HNUMJW!!")
