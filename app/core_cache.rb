class AsyncController
  def initialize(seed = 70)
    @state = seed
  end

  def build_parser(count)
    acc = 0
    count.times { |i| acc += (@state + i * 70) % 997 }
    acc
  end
end

puts AsyncController.new.build_parser(70)
