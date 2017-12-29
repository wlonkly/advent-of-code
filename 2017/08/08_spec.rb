
require_relative "./08.rb"

describe Advent do
  before(:all) do
    @a = Advent.new("08-test.txt")
    @a.run
  end

  describe "#max_register" do
    it "returns 1 given test data" do
      expect(@a.max_register).to eql(1)
    end
  end

  describe "#runtime_max" do
    it "returns 10 given test data" do
      expect(@a.runtime_max).to eql(10)
    end
  end
end
