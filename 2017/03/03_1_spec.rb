require_relative "./03.rb"

#
# 17  16  15  14  13
# 18   5   4   3  12
# 19   6   1   2  11
# 20   7   8   9  10
# 21  22  23  24  25


describe Advent do
  context "part 1" do
    describe "#side_length" do
      inputs  = [1, 2, 11, 25]
      outputs = [1, 3, 5, 5]

      inputs.each_with_index do |n, i|
        it "calculates the length of the side #{n} is on" do
          expect(Advent.side_length(n)).to eql(outputs[i])
        end 
      end
    end

    describe "#midpoints" do
      inputs  = [1, 3, 14, 25]
      outputs = [[1,1,1,1], [2,4,6,8], [11,15,19,23], [11,15,19,23]]

      inputs.each_with_index do |n, i|
        it "calculates the midpoints of the ring #{n} is on" do
          expect(Advent.midpoints(n)).to eql(outputs[i])
        end 
      end
    end

    describe "#distance_to_axis" do
      inputs  = [1, 8, 14, 25]
      outputs = [0, 0, 1, 2]

      inputs.each_with_index do |n, i|
        it "calculates the distance from #{n} to the axis" do
          expect(Advent.distance_to_axis(n)).to eql(outputs[i])
        end 
      end
    end

    describe "#ring" do
      inputs  = [1, 2, 23, 25]
      outputs = [1, 2, 3, 3]

      inputs.each_with_index do |n, i|
        it "calculates the ring #{n} is on" do
          expect(Advent.ring(n)).to eql(outputs[i])
        end 
      end
    end

    describe "#distance" do
      inputs  = [1, 2, 14, 25]
      outputs = [0, 1, 3, 4]

      inputs.each_with_index do |n, i|
        it "calculates distance from #{n} to centre" do
          expect(Advent.distance(n)).to eql(outputs[i])
        end 
      end
    end

  end
end
