require_relative "./05.rb"

describe Advent do
  before do
    @a = Advent.new("05-test.txt")
  end

  describe "#run_part1" do
    it "returns 5" do
      expect(@a.run_part1).to eql(5)
    end
  end

  describe '#run_part2' do
    it "returns 10" do
      expect(@a.run_part2).to eql(10)
    end
  end
end
