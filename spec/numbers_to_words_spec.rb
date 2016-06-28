require('numbers_to_words')

describe('numbers_to_words') do
  it("translates a single digit number to a word") do
    expect("1".numbers_to_words()).to(eq("one"))
  end
  it("translates numbers between 11-19 to a word") do
    expect("19".numbers_to_words()).to(eq("nineteen"))
  end
  it("translates numbers between 20-99 to a word") do
    expect("21".numbers_to_words()).to(eq("twenty one"))
  end
  it("translates numbers between 100-999 to a word") do
    expect("500".numbers_to_words()).to(eq("five hundred"))
  end
  it("translates numbers between 1000-9999 to a word") do
    expect("1050".numbers_to_words()).to(eq("one thousand fifty"))
  end
  it("translates numbers between 10000-19999 to a word") do
    expect("10001".numbers_to_words()).to(eq("ten thousand one"))
  end
  it("translates numbers between 20000-99999 to a word") do
    expect("57905".numbers_to_words()).to(eq("fifty seven thousand nine hundred five"))
  end
end
