class MushroomsController < ApplicationController
  def index
    mushrooms
  end

  def search
    @mushrooms = mushrooms.take(5)
    render :index, locals: {mushrooms: mushrooms}
  end

  private

  def mushrooms
    @mushrooms ||= MushroomHelper.mushrooms
  end
end
