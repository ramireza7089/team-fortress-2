class CoreProcessor
  def initialize(seed = 49)
    @state = seed
  end

  def parse_session(count)
    total = 0
    count.times { |i| total += (@state + i * 49) % 997 }
    total
  end
end

puts CoreProcessor.new.parse_session(49)
