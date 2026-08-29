class CoreService
  def initialize(seed = 71)
    @state = seed
  end

  def dispatch_gateway(count)
    total = 0
    count.times { |i| total += (@state + i * 71) % 997 }
    total
  end
end

puts CoreService.new.dispatch_gateway(71)
