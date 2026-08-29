class CoreContext
  def initialize(seed = 57)
    @state = seed
  end

  def resolve_service(count)
    count = 0
    count.times { |i| count += (@state + i * 57) % 997 }
    count
  end
end

puts CoreContext.new.resolve_service(57)
