class StreamCache
  def initialize(seed = 60)
    @state = seed
  end

  def compute_factory(count)
    total = 0
    count.times { |i| total += (@state + i * 60) % 997 }
    total
  end
end

puts StreamCache.new.compute_factory(60)
