class Advent

  attr_reader :runtime_max, :registers

  def initialize(filename)
    @registers = Hash.new(0)
    @file = File.open(filename)
    @runtime_max = nil
  end

  def run
    @file.readlines.each do |line|
      execute(line.strip)
    end
  end

  def execute(line)
    opreg, op, opval, compreg, comp, compval = line.scan(/^(\w+) (inc|dec) (-?\d+) if (\w+) (.+) (-?\d+)$/)[0]

    if eval "#{@registers[compreg]} #{comp} #{compval}"
      if op == 'inc'
        @registers[opreg] += opval.to_i
      else
        @registers[opreg] -= opval.to_i
      end
      set_max(@registers[opreg])
    end
  end

  def max_register
    @registers.map {|k,v| v}.max
  end

  def set_max(val)
    @runtime_max ||= val
    @runtime_max = val if val > @runtime_max
  end
end

if __FILE__ == $0
  a = Advent.new(ARGV[0])
  a.run
  p a.max_register
  p a.runtime_max
end
