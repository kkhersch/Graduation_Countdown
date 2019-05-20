class BigDependency
  def execute
    sleep(7)
  end
end

class FakeBigDependency
  def execute
    #do nothing
  end
end
