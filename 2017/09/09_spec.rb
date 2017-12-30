require_relative "./09.rb"

describe Advent do
  describe "#clean!" do
    cases = {
      '<>' => 0, 
      '<random characters>' => 17, 
      '<<<<>' => 3, 
      '<{!>}>' => 2, 
      '<!!>' => 0, 
      '<!!!>>' => 0, 
      '<{o"i!a,<{i<a>' => 10
    }

    cases.each do |c, v|
      it "cleans '#{c}' with score #{v}" do
        @a = Advent.new(c)
        expect(@a.clean!).to eql(v)
        expect(@a.stream).to eql('')
      end
    end
  end

  describe "#score" do
    cases = {
      '{}' => 1,
      '{{{}}}' => 6,
      '{{},{}}' => 5,
      '{{{},{},{{}}}}' => 16,
      '{<a>,<a>,<a>,<a>}' => 1,
      '{{<ab>},{<ab>},{<ab>},{<ab>}}' => 9,
      '{{<!!>},{<!!>},{<!!>},{<!!>}}' => 9,
      '{{<a!>},{<a!>},{<a!>},{<ab>}}' => 3
    }

    cases.each do |c, v|
      it "scores '#{c}' as #{v}" do
        @a = Advent.new(c)
        @a.clean!
        expect(@a.score).to eql(v)
      end
    end
  end
end

