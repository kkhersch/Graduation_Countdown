class CreatesMultiplier
  attr_accessor :multiplier_name, :multiplier_value, :multiplier

  def initialize(multiplier_name: "", multiplier_value: 0)
    @multiplier_name = multiplier_name
    @multiplier_value = multiplier_value
  end
  
  def success?
    @success
  end

  def build
    self.multiplier = Multiplier.new( multiplier_name: multiplier_name, 
                                      multiplier_value: multiplier_value)
  end

  def create
    build
    result = multiplier.save
    @success = result
  end
end
