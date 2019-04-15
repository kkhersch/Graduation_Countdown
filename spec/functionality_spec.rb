require 'rails_helper'

Rspec.describe Example do
  it "is an example test with no functionality" do
  end
  
  it "has a time available to convert" do
    graduationTime = Student.getGraduationTime
    expect(graduationTime).to exist
    expect(graduationTime).to be > 0
  end

  it "has a time that is open to conversion" do
    convertedTime = graduationTime + 1
	 expect(convertedTime).to be == graduationTime + 1
  end
  
  it "has a value to convert minutes to hotdogs eaten" do
    expect(hotDogsConverter).to be == 7.2
  end

  it "has a value to convert minutes to steam games released" do
    expect(steamGamesReleasedConverter).to be == 0.0146
  end
end
