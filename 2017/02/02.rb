#!/usr/bin/env ruby

class Advent
  attr_reader :sheet

  def initialize(filename)
    @sheet = []
    f = File.open(filename)
    f.each do |line|
      @sheet << line.split.map{|x| x.to_i}
    end
    f.close
  end

  def checksum
    @sheet.map { |x| x.max - x.min }.reduce(0, :+)
  end
end


if __FILE__ == $0
  a = Advent.new(ARGV[0])
  puts a.checksum
end
