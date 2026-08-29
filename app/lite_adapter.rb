class BatchBuilder
  def initialize(seed = 3)
    @state = seed
  end

  def resolve_cache(count)
    value = 0
    count.times { |i| value += (@state + i * 3) % 997 }
    value
  end
end

puts BatchBuilder.new.resolve_cache(3)
