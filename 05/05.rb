
# irb(main):066:0> x = [0, 3, 0, 1, -3]; n = 0; c = 0
# => 0
# irb(main):067:0> while n >= 0 and n < x.length do
# irb(main):068:1*   old = n; n += x[n]; x[old] += 1; c += 1
# irb(main):069:1>   puts "#{c} #{n} #{x}"
# irb(main):070:1> end
# 1 0 [1, 3, 0, 1, -3]
# 2 1 [2, 3, 0, 1, -3]
# 3 4 [2, 4, 0, 1, -3]
# 4 1 [2, 4, 0, 1, -2]
# 5 5 [2, 5, 0, 1, -2]
# => nil


class Advent
  def initialize(f)
    @prog = []
    File.open(f).readlines.each {|line| @prog << line.to_i}
  end

  def run_part1
    pos = count = 0
    while pos >= 0 and pos < @prog.length do
      prev = pos
      pos += @prog[pos]
      @prog[prev] += 1
      count += 1
    end
    p @prog
    count
  end

  def run_part2
    pos = count = 0
    while pos >= 0 and pos < @prog.length do
      prev = pos
      pos += @prog[pos]
      @prog[prev] += (@prog[prev] >= 3 ? -1 : 1)
      count += 1
    end
    count
  end
end

if __FILE__ == $0
  a = Advent.new(ARGV[0])
  puts a.run_part1
  # run_part1 modifies a.prog -- not realizing this led to a LOT of 
  # unnecessary debugging! 
  b = Advent.new(ARGV[0])
  puts b.run_part2
end
