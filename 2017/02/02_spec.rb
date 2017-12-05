require_relative "./02a.rb"

describe Advent do
  context "part 1" do
    before do
      @a = Advent.new("02-test.txt")
    end

    describe "#new" do
      it "generates a two-dimensional array" do
        expect(@a.sheet).to match_array([
          [5, 1, 9, 5],
          [7, 5, 3],
          [2, 4, 6, 8]
        ]) 
      end
    end

    describe "#checksum_one" do
      it "returns 18" do
        expect(@a.checksum_one).to eql(18)
      end
    end
  end

  context "part 2" do
    before do
      @b = Advent.new("02-test2.txt")
    end

    describe "#checksum_two" do
      it "returns 9" do
        expect(@b.checksum_two).to eql(9)
      end
    end
  end
end
