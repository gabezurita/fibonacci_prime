class Fibonacci
  def self.calculate(num)
    num = num.to_i
    if Cache::FIBONACCI[num]
      return Cache::FIBONACCI[num]
    elsif num == 0 || num == 1
      Cache::FIBONACCI[num] ||= num
    else
      puts "#{Cache::FIBONACCI[num]} "
      Cache::FIBONACCI[num] ||= calculate(num-1) + calculate(num-2)
    end
  end
end
