class Fibonacci
  def self.calculate(num)
    return "🙏 Please enter a valid number" if num == ""
    num = num.to_i

    if !(num.is_a? Integer)
      return "😑 Fibonacci numbers must be integers--try again!"
    elsif num < 0
      return "🤷 The Fibonacci series starts at 0--try again!"
    elsif Cache::FIBONACCI[num]
      return Cache::FIBONACCI[num]
    elsif num <= 1
      return num
    else
      Cache::FIBONACCI[num] ||= calculate(num-1) + calculate(num-2)
    end
  end
end
