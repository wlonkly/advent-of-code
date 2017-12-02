require_relative "./02.rb"

describe Advent do
  before do
    @a = Advent.new("02-test.txt")
  end

  describe ".new" do
    it "generates a two-dimensional array" do
      expect(@a.sheet).to match_array([
        [5, 1, 9, 5],
        [7, 5, 3],
        [2, 4, 6, 8]
      ]) 
    end
  end

  describe "#checksum_row" do
    it "returns the difference between the largest and smallest values" do
      expect(Advent.checksum_row([5, 1, 9, 5])).to eql(8)
    end
  end

  describe ".checksum" do
    it "returns 18" do
      expect(@a.checksum).to eq(18)
    end
  end
end
