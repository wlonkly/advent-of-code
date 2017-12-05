
# 17  16  15  14  13
# 18   5   4   3  12
# 19   6   1   2  11
# 20   7   8   9  10
# 21  22  23  24  25

class Advent
  def self.side_length(input)
    side = Math.sqrt(input).ceil
    if side % 2 == 0
      side += 1
    end
    side
  end

  def self.midpoints(input)
    midpoints = []
    s = side_length(input)

    (0..3).each do |i|  
      # corner - distance to axis - distance to next axis      
      midpoints << s**2 - (s/2).floor - ((s-1)*i) 
    end
    midpoints.reverse  # easier to write the test cases :)
  end

  def self.distance_to_axis(input)
    midpoints(input).map{|p| (p - input).abs}.min
  end

  def self.ring(input)
    (Math.sqrt(input).ceil / 2) 
  end

  def self.distance(input)
    distance_to_axis(input) + ring(input) 
  end
end


if __FILE__ == $0
  puts Advent.distance(ARGV[0].to_i)
end
