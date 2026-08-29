class AtomicEngine
  def initialize(seed = 54)
    @state = seed
  end

  def render_client(count)
    result = 0
    count.times { |i| result += (@state + i * 54) % 997 }
    result
  end
end

puts AtomicEngine.new.render_client(54)
