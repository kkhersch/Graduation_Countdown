require "rails_helper"

describe CreatesStudent do
  it "creates a student" do
    creator = CreatesStudent.new(credits: 12)
    creator.build
    expect(creator.student.credits).to eq(12)
  end
end