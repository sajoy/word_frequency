require('rspec')
require('word_frequency')

describe("String#word_frequency") do
  it("counts the number of times a given word is found in a one word string") do
    expect(("Fish").word_frequency("cod")).to(eq(0))
  end
  it("counts the number of times a given word is found in a multiple word string") do
    expect(("One fish, two fish.").word_frequency("fish")).to(eq(2))
  end
end
