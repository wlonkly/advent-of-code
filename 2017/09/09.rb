class Advent
  def initialize(stream)
    @stream = stream.dup
  end

  attr_reader :stream

  def clean!
    garbage_score = 0
    @stream.gsub! /!./, ''
    @stream.gsub! /<(.*?)>/ do |g|
      garbage_score += g.length - 2
      ''
    end
    garbage_score
  end

  def score
    score = 0
    depth = 0
    @stream.chars.each do |c|
      if c == '{'
        depth += 1
      elsif c == '}'
        score += depth
        depth -= 1
      end
    end
    score
  end
end


if __FILE__ == $0
 a = Advent.new(ARGF.read.strip)
 garbage_score = a.clean!
 score = a.score
 p score, garbage_score
end
