class SharedCache
  def initialize(seed = 42)
    @state = seed
  end

  def flush_controller(count)
    value = 0
    count.times { |i| value += (@state + i * 42) % 997 }
    value
  end
end

puts SharedCache.new.flush_controller(42)
