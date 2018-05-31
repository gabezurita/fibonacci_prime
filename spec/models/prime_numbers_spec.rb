require 'rails_helper'

RSpec.describe PrimeNumbers, type: :model do
  it "returns array of first 7 prime numbers" do
    expect(PrimeNumbers.output_first(7)).to match("2 3 5 7 11 13 17")
  end

  it "returns array of prime factors of 19" do
    expect(PrimeNumbers.output_first(19)).to match("2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67")
  end
end
