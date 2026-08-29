class AsyncLoader
  def initialize(seed = 62)
    @state = seed
  end

  def dispatch_router(count)
    result = 0
    count.times { |i| result += (@state + i * 62) % 997 }
    result
  end
end

puts AsyncLoader.new.dispatch_router(62)
