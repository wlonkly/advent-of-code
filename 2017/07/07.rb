
class Advent
  def initialize(filename)
    @data = {}
    # parse the file
    File.open(filename).readlines.each do |line|
      # abcd (12) -> efgh, ijkl, ...
      out = line.scan(/(\w+) \((\d+)\)(?: -> (.*))?$/)[0]
      links = out[2].split(/, /) if out[2]
      @data[out[0]] = [out[1].to_i, links]
    end 
  end

  def parent(node)
    @data.each do |key, val|
      if val[1] and val[1].include?(node)
        return key
      end
    end
    nil
  end

  def find_root(node = @data.keys[0])
    if parent(node)
      return find_root(parent(node))
    else
      return node
    end
  end

  def weight_breakdown(node = find_root())
    puts "node #{node} has weight #{@data[node][0]}"
    @data[node][1].each do |child|
      puts "  child #{child} has weight #{weight(child)} and children #{@data[child][1]}"
    end
  end

  def weight(node)
    if @data[node][1]
      sum = @data[node][0]
      @data[node][1].each do |child|
        sum += weight(child)
      end
      return sum
    else
      return @data[node][0]
    end
  end
end

if __FILE__ == $0
  a = Advent.new(ARGV[0])
  a.find_unbalanced
end
