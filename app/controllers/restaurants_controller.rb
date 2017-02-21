class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def show
    id = params[:id]
    @restaurant = Restaurant.find(id)
  end
  def new
    #actions to display the form to create data
  end
  def create
    name_rest = params[:restaurant_name]
    address_rest = params[:restaurant_address]
    stars_rest = params[:restaurant_stars].to_i
    rest = Restaurant.new(name: name_rest, address: address_rest, stars: stars_rest)
    rest.save

    redirect_to "/restaurants"
    #Actions to create
  end
end
