require('rspec')
require('word_frequency')

describe("String#word_frequency") do
  it("counts the number of times a given word is found in a one word string") do
    expect(("Fish").word_frequency("cod")).to(eq(0))
  end
  it("counts the number of times a given word is found whole in a multiple word string") do
    expect(("One fish, two fish.").word_frequency("fish")).to(eq(2))
  end
  it("counts the number of times a given word is found as part of other words in a multiple word string") do
    expect(("One fish, two fish, red fish, blue fishy.").word_frequency("fish")).to(eq(4))
  end
  it("counts the number of times a given word is repeated within a word") do
    expect(("One fish, two fish, red fish, blue fishyfishfish.").word_frequency("fish")).to(eq(6))
  end
end
