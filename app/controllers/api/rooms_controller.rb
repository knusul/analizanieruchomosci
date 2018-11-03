class Api::RoomsController < ApplicationController
  def index
    render json: {"data": Property.by_day}
  end

  def by_age
    render json: {"data": Property.by_day_average_duration }
  end
end
