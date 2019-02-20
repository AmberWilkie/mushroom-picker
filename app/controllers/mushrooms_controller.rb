class MushroomsController < ApplicationController
  before_action :get_headers, :get_mushrooms

  def index
    render :index, locals: { mushrooms: @mushrooms, garbage: 'dammit' }
  end

  def search
    cap_shapes = params['cap-shape'].select { |_key, value| value == '1' }.keys
    @mushrooms = Mushroom.where(cap_shape: cap_shapes)
    render :index, locals: { mushrooms: @mushrooms, garbage: 'so much garbage' }
  end

  private

  def get_headers
    @headers = MushroomHelper.mushroom_attributes.first(5)
  end

  def get_mushrooms
    @mushrooms = MushroomHelper.mushrooms
  end
end
