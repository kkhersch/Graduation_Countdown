require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

Rspec.describe Example do
  it "is an example test with no functionality" do
  end

  it "has a value to convert minutes to hotdogs eaten" do
    expect(hotDogsConverter).to be == 7.2
  end

  it "has a value to convert minutes to steam games released" do
    expect(steamGamesReleasedConverter).to be == .0146
  end
end
