class HomeController < ApplicationController
  def index
    @num = params[:n].to_i

    @fibonacci_number = Fibonacci.calculate(@num)

    @first_n_fibonacci_numbers = Fibonacci.output_first(@num)

    @first_n_prime_numbers = PrimeNumbers.output_first(@num)
  end
end
