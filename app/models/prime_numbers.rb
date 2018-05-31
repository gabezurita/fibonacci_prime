require 'prime'

class PrimeNumbers
  def self.is_prime?(num)
    Prime.prime?(num)
  end

  def self.output_first(num)
    return if num.nil?
    num = num.to_i
    Prime.first(num).join(' ')
  end
end
