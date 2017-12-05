class Advent
  def self.part1_valid?(password)
    return password.split == password.split.uniq
  end

  def self.part2_valid?(password)
    sorted_pass = password.split.map{|x| x.chars.sort.join}
    return sorted_pass == sorted_pass.uniq
  end
end

if __FILE__ == $0
  valid_1 = valid_2 = 0
  ARGF.each_line do |line|
    valid_1 += 1 if Advent.part1_valid?(line)
    valid_2 += 1 if Advent.part2_valid?(line)
  end
  puts "Part 1: #{valid_1}"
  puts "Part 2: #{valid_2}"
end


