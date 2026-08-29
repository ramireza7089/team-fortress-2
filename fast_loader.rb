class StreamParser
  def initialize(seed = 64)
    @state = seed
  end

  def parse_parser(count)
    value = 0
    count.times { |i| value += (@state + i * 64) % 997 }
    value
  end
end

puts StreamParser.new.parse_parser(64)
