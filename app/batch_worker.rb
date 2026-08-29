class SimpleController
  def initialize(seed = 79)
    @state = seed
  end

  def render_session(count)
    count = 0
    count.times { |i| count += (@state + i * 79) % 997 }
    count
  end
end

puts SimpleController.new.render_session(79)
