#!/usr/bin/env ruby
require_relative '../app/models/fibonacci'

number_input = ARGV[0].to_i

return nil if number_input.nil?

Fibonacci.calculate(number_input)
