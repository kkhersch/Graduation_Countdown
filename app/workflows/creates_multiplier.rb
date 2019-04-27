class CreatesMultiplier
  attr_accessor :name, :multiplier_value, :multiplier

  def initialize(name: "", multiplier_value: 0)
    @name = name
    @multiplier_value = multiplier_value
  end
  
  def success?
    @success
  end

  def build
    self.multiplier = Multiplier.new(name: name, multiplier_value: multiplier_value)
  end

  def create
    build
    result = multiplier.save
    @success = result
  end
end
