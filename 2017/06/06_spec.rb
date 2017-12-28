require_relative "./06.rb"

describe Advent do
  before(:each) do
    @a = Advent.new([0,2,7,0])
  end

  describe "#redistribute!" do
    it "redistributes the values" do
      expect(@a.redistribute!).to eq([2,4,1,2])
    end
  end

  describe "#converge!" do
    it "converges" do
      expect(@a.converge!).to eql([5,4])
    end
  end
end
