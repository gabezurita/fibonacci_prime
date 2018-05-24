class Fibonacci
  def self.calculate(num)
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
