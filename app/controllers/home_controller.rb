class HomeController < ApplicationController
  def index
    @result = Fibonacci.calculate(params[:n])
  end
end
