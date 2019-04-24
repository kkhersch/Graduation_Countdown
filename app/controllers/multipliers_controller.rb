class MultipliersController < ApplicationController
  def new
    @multiplier = Multiplier.new
  end

  def index
    @multipliers = Multiplier.all
  end

  def create
    @workflow = CreatesMultiplier.new(
      name: params[:multiplier][:name],
      multiplier_value: params[:multiplier][:multiplier_value]
    )
    @workflow.create
    if @workflow.success?
      redirect_to multipliers_path
    else
      @multiplier = @workflow.multiplier
      render :new
  end
end
