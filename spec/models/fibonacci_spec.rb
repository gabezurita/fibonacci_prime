require 'rails_helper'

RSpec.describe Fibonacci, type: :model do
  context "when given invalid numbers" do
  it "raises an error message for negative integers" do
    expect{Fibonacci.calculate(-1)}.to raise_error.with_message("😑 Fibonacci numbers must be integers greater than 0--try again!")
  end

  it "raises an error message for negative non-integers integers" do
    expect{Fibonacci.calculate(-1.5)}.to raise_error.with_message("😑 Fibonacci numbers must be integers greater than 0--try again!")
  end

  it "raises an error message for non-integers" do
    expect{Fibonacci.calculate(1.5)}.to raise_error.with_message("😑 Fibonacci numbers must be integers greater than 0--try again!")
  end
end

  context "when given valid numbers" do
    it "outputs the fibonacci number for 0" do
      expect(Fibonacci.calculate(0)).to eql(0)
      expect(Cache::FIBONACCI).to eql({0=>0})
      expect(Fibonacci.output_first(0)).to match("")
    end

    it "outputs the fibonacci number for 1" do
      expect(Fibonacci.calculate(1)).to eql(1)
      expect(Cache::FIBONACCI).to eql({0=>0, 1=>1})
      expect(Fibonacci.output_first(1)).to match("0")
    end

    it "outputs the fibonacci number for 5" do
      expect(Fibonacci.calculate(5)).to eql(5)
      expect(Cache::FIBONACCI).to eql({0=>0, 1=>1, 2=>1, 3=>2, 4=>3, 5=>5})
      expect(Fibonacci.output_first(5)).to eql("0 1 1 2 3")
    end

    it "outputs the fibonacci number for 8" do
      expect(Fibonacci.calculate(8)).to eql(21)
      expect(Cache::FIBONACCI).to eql({0=>0, 1=>1, 2=>1, 3=>2, 4=>3, 5=>5, 6=>8, 7=>13, 8=>21})
      expect(Fibonacci.output_first(8)).to match("0 1 1 2 3 5 8 13")
    end

    it "outputs the fibonacci number for 8" do
      expect(Fibonacci.calculate(55)).to eql(139583862445)
      expect(Cache::FIBONACCI).to eql({0=>0, 1=>1, 2=>1, 3=>2, 4=>3, 5=>5, 6=>8, 7=>13, 8=>21, 9=>34, 10=>55, 11=>89, 12=>144, 13=>233, 14=>377, 15=>610, 16=>987, 17=>1597, 18=>2584, 19=>4181, 20=>6765, 21=>10946, 22=>17711, 23=>28657, 24=>46368, 25=>75025, 26=>121393, 27=>196418, 28=>317811, 29=>514229, 30=>832040, 31=>1346269, 32=>2178309, 33=>3524578, 34=>5702887, 35=>9227465, 36=>14930352, 37=>24157817, 38=>39088169, 39=>63245986, 40=>102334155, 41=>165580141, 42=>267914296, 43=>433494437, 44=>701408733, 45=>1134903170, 46=>1836311903, 47=>2971215073, 48=>4807526976, 49=>7778742049, 50=>12586269025, 51=>20365011074, 52=>32951280099, 53=>53316291173, 54=>86267571272, 55=>139583862445})
      expect(Fibonacci.output_first(55)).to match("0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 102334155 165580141 267914296 433494437 701408733 1134903170 1836311903 2971215073 4807526976 7778742049 12586269025 20365011074 32951280099 53316291173 86267571272")
    end

    it "outputs the fibonacci number for 155" do
      expect(Fibonacci.calculate(155)).to eql(110560307156090817237632754212345)
      expect(Cache::FIBONACCI.length).to eql(156)
    end

    it "outputs the fibonacci number for 333" do
      expect(Fibonacci.calculate(333)).to eql(1751455877444438095408940282208383549115781784912085789506677971125378)
      expect(Cache::FIBONACCI.length).to eql(334)
    end
  end
end
