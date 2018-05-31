class Fibonacci
  def self.calculate(num)
    raise("😑 Fibonacci numbers must be integers greater than 0--try again!") if (!(num.is_a? Integer) || num < 0)

    num = num.to_i

    if Cache::FIBONACCI[num]
      return Cache::FIBONACCI[num]
    elsif num == 0 || num == 1
      Cache::FIBONACCI[num] ||= num
    else
      Cache::FIBONACCI[num] ||= calculate(num-1) + calculate(num-2)
    end
  end
end
