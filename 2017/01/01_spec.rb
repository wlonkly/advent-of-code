require_relative "./01.rb"

describe Advent do
  describe "#sum_neighbours" do
    context "when provided 1111" do
      it "returns 4" do
      end
    end

    context "when provided 1122" do
      it "returns 3" do
        expect(Advent.new("1122").sum_neighbours).to eql(3)
      end
    end

    context "when provided 1234" do
      it "returns 0" do
        expect(Advent.new("1234").sum_neighbours).to eql(0)
      end
    end

    context "when provided 91212129" do
      it "returns 9" do
        expect(Advent.new("91212129").sum_neighbours).to eql(9) 
      end
    end
  end

  describe "#sum_halfway" do
    context "when provided 1212" do
      it "returns 6" do
        expect(Advent.new("1212").sum_halfway).to eql(6)
      end
    end

    context "when provided 1221" do
      it "returns 0" do
        expect(Advent.new("1221").sum_halfway).to eql(0)
      end
    end

    context "when provided 123425" do
      it "returns 4" do
        expect(Advent.new("123425").sum_halfway).to eql(4)
      end
    end

    context "when provided 123123" do
      it "returns 12" do
        expect(Advent.new("123123").sum_halfway).to eql(12)
      end
    end

    context "when provided 12131415" do
      it "returns 4" do
        expect(Advent.new("12131415").sum_halfway).to eql(4)
      end
    end
  end
  
end
