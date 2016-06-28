require('numbers_to_words')

describe('numbers_to_words') do
  it("translates a single digit number to a word") do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  it("translates numbers between 20-99 to a word") do
    expect("21".numbers_to_words()).to(eq("twenty one"))
  end
  it("translates numbers between 11-19 to a word") do
    expect("19".numbers_to_words()).to(eq("nineteen"))
  end
  it("translates numbers between 100-999 to a word") do
    expect("368".numbers_to_words()).to(eq("three hundred sixty eight"))
  end
end
