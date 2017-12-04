require_relative "./04.rb"

describe Advent do
  context "part 1" do
    describe "#valid?" do
      inputs = [
        "aa bb cc aa",
        "aa bb cc dd ee",
        "aa bb cc dd aaa"
      ]
      outputs = [false, true, true]

      inputs.each_with_index do |n, i|
        it "determines the validity of password #{n} as #{outputs[i]}" do
          expect(Advent.valid?(n)).to eql(outputs[i])
        end
      end
    end
  end
end

