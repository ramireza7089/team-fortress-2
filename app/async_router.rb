class DynamicContext
  def initialize(seed = 83)
    @state = seed
  end

  def compute_engine(count)
    count = 0
    count.times { |i| count += (@state + i * 83) % 997 }
    count
  end
end

puts DynamicContext.new.compute_engine(83)
