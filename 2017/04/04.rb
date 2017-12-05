class Advent
  def self.part1_valid?(password)
    words = {}
    password.split.each do |word|
      return false if words.has_key?(word)
      words[word] = true
    end 
    true
  end

  def self.part2_valid?(password)
    words = {}
    password.split.each do |word|
      sorted_word = word.chars.sort.join
      return false if words.has_key?(sorted_word)
      words[sorted_word] = true
    end
    true
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


