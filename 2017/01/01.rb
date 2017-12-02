#!/usr/bin/env ruby

class Advent
  def initialize(f)
    if File.exist?(f)
      i = File.read(f)
    else
      i = f
    end
    @input = i.chars.map{|x| x.to_i}
  end

  def sum_neighbours
    @input.select
      .with_index { |x, i| x == @input[(i+1) % @input.length] }
      .reduce(0, :+)
  end

  def sum_halfway
    @input.select
      .with_index { |x, i| x == @input[(i + @input.length/2) % @input.length] }
      .reduce(0, :+)
  end
end

if __FILE__ == $0
  a = Advent.new(ARGV[0])
  puts a.sum_neighbours
  puts a.sum_halfway
end
