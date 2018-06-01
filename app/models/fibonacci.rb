class Fibonacci
  def self.calculate(num)
    raise("😑 Fibonacci numbers must be integers greater than 0--try again!") if (!(num.is_a? Integer) || num < 0)

    num = num.to_i

    if Cache::FIBONACCI[num]
      Cache::FIBONACCI[num]
    elsif num == 0 || num == 1
      Cache::FIBONACCI[num] ||= num
    else
      Cache::FIBONACCI[num] ||= calculate(num-1) + calculate(num-2)
    end
  end

  def self.output_first(num)
    Cache::FIBONACCI.sort_by { |k,v| k }.first(num).to_h.values.join(' ')
  end
end
