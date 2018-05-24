class Fibonacci
  def self.calculate(num)
    if !(num.is_a? Integer)
      return "😑 Fibonacci numbers must be integers--try again!"
    elsif num < 0
      return "🤷 The Fibonacci series starts at 0--try again!"
    else
      a = 0
      b = 1
      counter = 0

      until counter == num
        temp = a
        a = b
        b = temp + b
        counter += 1
      end
      return a
    end
  end
end
