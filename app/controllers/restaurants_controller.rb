class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show,:edit,:update,:destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    #actions to display the form to create data
  end
  def create

    rest = Restaurant.new(restaurants_params)
    rest.save
    redirect_to "/restaurants"
    #Actions to create
  end

  def edit
  end
  def update
      @restaurant.update(restaurants_params)
      redirect_to "/restaurants"
  end

  def destroy
    @restaurant.destroy

    redirect_to "/restaurants"
  end

  private

  def restaurants_params
    params.require(:restaurant).permit(:name,:address,:stars)
  end


  def set_restaurant
    @restaurant = Restaurant.find(params[:id].to_i)
  end
end
