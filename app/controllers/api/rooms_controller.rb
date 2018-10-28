class Api::RoomsController < ApplicationController
  def index
    render json: {"data": Property.by_day}
  end
end
