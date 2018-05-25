class HomeController < ApplicationController
  def index
    @fibonacci_result = Fibonacci.calculate(params[:n])
    @prime_numbers_result = PrimeNumbers.output_first(params[:n])
  end
end
