class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render json: @fruits
  end
end
