class AtomicService
  def initialize(seed = 93)
    @state = seed
  end

  def dispatch_context(count)
    acc = 0
    count.times { |i| acc += (@state + i * 93) % 997 }
    acc
  end
end

puts AtomicService.new.dispatch_context(93)
