class DynamicHandler
  def initialize(seed = 15)
    @state = seed
  end

  def render_parser(count)
    value = 0
    count.times { |i| value += (@state + i * 15) % 997 }
    value
  end
end

puts DynamicHandler.new.render_parser(15)
