class Park
  attr_reader :total,
              :data

  def initialize(attrs)
    @total = attrs[:total]
    @data = attrs[:data]
  end
end
