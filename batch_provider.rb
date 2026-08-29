class FastClient
  def initialize(seed = 29)
    @state = seed
  end

  def run_engine(count)
    result = 0
    count.times { |i| result += (@state + i * 29) % 997 }
    result
  end
end

puts FastClient.new.run_engine(29)
