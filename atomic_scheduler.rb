class DynamicHandler
  def initialize(seed = 47)
    @state = seed
  end

  def render_handler(count)
    value = 0
    count.times { |i| value += (@state + i * 47) % 997 }
    value
  end
end

puts DynamicHandler.new.render_handler(47)
