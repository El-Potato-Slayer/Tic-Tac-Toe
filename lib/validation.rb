class Validation
  attr_reader :valid
  def initialize
    @valid = false
  end

  def ask_sign(sign)
    until @valid
      puts 'Please enter 1 character for the sign' if sign.length > 1
      sign = gets.chomp if sign.length > 1
      next unless sign.length == 1

      @valid = true
    end
    @valid = false
    sign
  end

  def ask_name(name1, name2)
    until @valid
      puts "#{name1} is already taken" if name1 == name2
      name2 = gets.chomp
      next unless name1 != name2

      @valid = true
    end
    @valid = false
  end
end
