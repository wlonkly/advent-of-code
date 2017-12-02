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

  def checksum_one
    @sheet.map{|x| x.max - x.min}.reduce(:+)
  end

  def checksum_two
    @sheet.map do |x| 
      x.permutation(2).find do |a,b| 
        a%b == 0
      end.reduce(:/)
    end.reduce(:+)
  end
end

if __FILE__ == $0
  a = Advent.new(ARGV[0])
  puts a.checksum_one
  puts a.checksum_two
end
