require_relative "./07.rb"

describe Advent do
  before(:each) do
    @a = Advent.new("07-test.txt")
  end

  describe "initialize" do
    it "reads the file" do
      expect(@a) to eq([2,4,1,2])
    end
  end

  describe "#converge!" do
    it "converges" do
      expect(@a.converge!).to eql([5,4])
    end
  end
end
