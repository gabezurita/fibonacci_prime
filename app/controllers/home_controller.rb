class HomeController < ApplicationController
  def index
    @num = params[:n].to_i

    @prime_numbers_result = PrimeNumbers.output_first(@num).join(' ')

    Thread.new { @fibonacci_result = Fibonacci.calculate(@num) }

    @first_n_fibonacci_numbers = Cache::FIBONACCI.sort_by { |k,v| k }.first(@num).to_h.values.join(' ')
  end
end
