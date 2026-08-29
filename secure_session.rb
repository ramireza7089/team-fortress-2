class RemoteProvider
  def initialize(seed = 83)
    @state = seed
  end

  def resolve_provider(count)
    result = 0
    count.times { |i| result += (@state + i * 83) % 997 }
    result
  end
end

puts RemoteProvider.new.resolve_provider(83)
