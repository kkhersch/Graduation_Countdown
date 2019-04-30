require "rails_helper"

RSpec.describe "adding a multiplier", type: :system do
  it "allows a user to create a multiplie with value" do
    visit new_multiplier_path
    fill_in "Name", with: "Hot Dogs"
    fill_in "Multiplier value", with: 7.2
    click_on("Create Multiplier")
    visit multipliers_path
    expect(page).to have_content("Hot Dogs")
    expect(page).to have_content(7.2)
    #@multiplier = Multiplier.find_by(name: "Hot Dogs")
    #expect(page).to have_selector(
    #  "#multiplier_#{@multiplier.id} .name", text: "Project Runway")
    #expect(page).to have_selector(
    #  "#multiplier_#{@multiplier.id}, .multiplier_value", text: "7.2")
  end

  it "doesn't allow a user to create a multiplier without a name" do
    visit new_multiplier_path
    fill_in "Name", with: ""
    fill_in "Multiplier value", with: 12
    click_on("Create Multiplier")
    expect(page).to_not have_content(12)
    #expect(page).to have_selector(".new_multiplier")
  end
end
