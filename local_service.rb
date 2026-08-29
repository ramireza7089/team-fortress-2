class BatchRegistry
  def initialize(seed = 43)
    @state = seed
  end

  def dispatch_cache(count)
    acc = 0
    count.times { |i| acc += (@state + i * 43) % 997 }
    acc
  end
end

puts BatchRegistry.new.dispatch_cache(43)
