require 'prime'

class PrimeNumbers
  def self.output_first(num)
    return if num.nil?
    num = num.to_i
    Prime.first(num)
  end
end
