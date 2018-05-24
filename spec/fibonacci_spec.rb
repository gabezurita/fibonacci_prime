require_relative '../fibonacci'

describe "Fibonacci calculation method" do
  context "when given valid numbers" do
    it "outputs the fibonacci number for 0" do
      expect(Fibonacci.calculate(0)).to eql(0)
    end

    it "outputs the fibonacci number for 1" do
      expect(Fibonacci.calculate(1)).to eql(1)
    end

    it "outputs the fibonacci number for 5" do
      expect(Fibonacci.calculate(5)).to eql(5)
    end

    it "outputs the fibonacci number for 8" do
      expect(Fibonacci.calculate(8)).to eql(21)
    end

    it "outputs the fibonacci number for 155" do
      expect(Fibonacci.calculate(155)).to eql(110560307156090817237632754212345)
    end

    it "outputs the fibonacci number for 333" do
      expect(Fibonacci.calculate(333)).to eql(1751455877444438095408940282208383549115781784912085789506677971125378)
    end
  end
end
