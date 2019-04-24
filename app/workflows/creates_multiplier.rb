class CreatesMultiplier
  attr_accessor :name, :multiplier_value

  def initialize(name: "", multiplier_value: 0)
    @name = name
    @success = false
  end

  def success?
    @success
  end

  def build
    self.multiplier = Multiplier.new(name: name, multiplier_value: multiplier_value)
    multiplier
  end

  def create
    build
    result = multiplier.save
    @success = result
  end
end
