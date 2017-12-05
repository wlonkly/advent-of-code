require_relative "./04.rb"

describe Advent do
  describe ".part1_valid?" do
    cases = {
      "aa bb cc aa" => false,
      "aa bb cc dd ee" => true,
      "aa bb cc dd aaa" => true,
    }

    cases.each do |input, output|
      it "applies part1_valid? to #{input}" do
        expect(Advent.part1_valid?(input)).to eql(output)
      end
    end
  end

  describe ".part2_valid?" do
    cases = {
      "abcde fghij" => true,
      "abcde xyz ecdab" => false,
      "a ab abc abd abf abj" => true,
      "iiii oiii ooii oooi oooo" => true,
      "oiii ioii iioi iiio" => false
    }

    cases.each do |input, output|
      it "applies part2_valid? to #{input}" do
        expect(Advent.part2_valid?(input)).to eql(output)
      end
    end
  end
end

