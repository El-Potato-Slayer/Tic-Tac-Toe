class Validation
  attr_reader :valid
  def initialize
    @valid = false
  end

  def ask_sign(sign)
    until @valid
      print "Please enter 1 character for the sign\nPlease enter another sign: " if sign.length > 1
      sign = gets.chomp if sign.length > 1
      next unless sign.length == 1

      @valid = true
    end
    @valid = false
    sign
  end

  def input_valid?(obj, obj1, obj2)
    until @valid
      print "#{obj1} is already taken\nPlease enter another #{obj}: " if obj1 == obj2
      obj2 = gets.chomp if obj1 == obj2
      next unless obj1 != obj2
      @valid = true
    end
    @valid = false
    obj2
  end

  # def validate_sign(sign1, sign2)
  #   until @valid
  #     print "#{sign1} is already taken\nPlease enter another sign: " if sign1 == sign2
  #     sign2 = gets.chomp if sign1 == sign2
  #     next unless sign1 != sign2
  #     @valid = true
  #   end
  #   @valid = false
  #   sign2
  # end
end
