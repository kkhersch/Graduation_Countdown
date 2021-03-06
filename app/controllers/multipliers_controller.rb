class MultipliersController < ApplicationController
  def new
    @multiplier = Multiplier.new
  end
  
  def index
    @multiplier = Multiplier.all
  end
  
  def create
    @workflow = CreatesMultiplier.new(
    name: params[:multiplier][:name],
    multiplier_value: params[:multiplier][:multiplier_value])
    @workflow.create
    redirect_to multipliers_path
  end
end
