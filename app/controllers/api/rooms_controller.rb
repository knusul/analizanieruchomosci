class Api::RoomsController < ApplicationController
  def index
    render json: {"data": Property.by_day}
  end

  def by_age
    render json: {"data": Property.by_day_average_duration }
  end

  def average_price
    render json: {"data": Property.average_price }
  end

  def heatmap_data
    render json: {"data": Property.heatmap_data }
  end
end
