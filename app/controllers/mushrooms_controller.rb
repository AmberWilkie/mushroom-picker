class MushroomsController < ApplicationController
  def index
    @mushrooms = MushroomHelper.get_mushrooms
  end
end
