require('numbers_to_words')

describe('numbers_to_words') do
  it("translates a single digit number to a word") do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  it("translates a numbers between 20-99 to a word") do
    expect("21".numbers_to_words()).to(eq("twenty one"))
  end
end
