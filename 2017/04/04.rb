class Advent
  def self.valid?(password)
    words = {}
    password.split.each do |word|
      return false if words.has_key?(word)
      words[word] = true
    end 
    return true
  end
end

if __FILE__ == $0
  puts Advent.valid?("aa bb cc")
end


