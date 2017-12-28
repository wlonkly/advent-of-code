class Advent
  def initialize(input)
    @banks = input
  end

  def redistribute!
    m = @banks.max
    i = @banks.index(m)

    @banks[i] = 0
    m.times { |x| @banks[(i+x+1) % @banks.length] += 1 }
    @banks
  end

  def converge!
    seen = {@banks => 1}
    cycles = 0

    while true do
      redistribute!
      cycles += 1
      break if seen[@banks]
      seen[@banks] = cycles
    end
    loopsize = cycles - seen[@banks]
    [cycles, loopsize]
  end
end

if __FILE__ == $0
  a = File.open(ARGV[0]).readlines.first.split(/\s/).map(&:to_i)
  p Advent.new(a).converge!
end
