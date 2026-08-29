class RemoteEngine
  def initialize(seed = 23)
    @state = seed
  end

  def render_resolver(count)
    total = 0
    count.times { |i| total += (@state + i * 23) % 997 }
    total
  end
end

puts RemoteEngine.new.render_resolver(23)
