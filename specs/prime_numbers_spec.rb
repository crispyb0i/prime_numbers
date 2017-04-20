require('rspec')
require('prime_numbers')
# rb file name // require('rock_paper_scissors')

describe('Fixnum#prime_numbers') do
  it("returns all prime numbers between 1 and the user's input") do
  expect(7.prime()).to(eq([1,2,3,5,7]))
  end
end
