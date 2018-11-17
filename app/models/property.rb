class Property < ApplicationRecord

  def self.from_day(date)
    Property.where(created_at: date.midnight..date.end_of_day)
  end

  def self.by_day
    10.times.map(&:day).map(&:ago).map { |day|
      {"#{day.strftime("%B %d, %Y")}": from_day(day).count}
    }
  end


  def self.by_day_average_duration
    10.times.map(&:day).map(&:ago).map { |day|
      sold_rooms = from_day(day).select(" *, ( updated_at::date - created_at::date ) as diff").where("updated_at::date < ?", Date.today).map(&:diff)
      {"#{day.strftime("%B %d, %Y")}": sold_rooms.count == 0 ? 0: sold_rooms.sum.to_f/sold_rooms.count }
    }
  end


  def self.average_price
    10.times.map(&:day).map(&:ago).map { |day|
      {"#{day.strftime("%B %d, %Y")}": Property.from_day(day).average(:price).to_f.round(2) }
    }
  end

  def self.heatmap_data
    Property.all.select{|prop| prop.lon != nil && prop.lon != nil && prop.price != nil }.map do |property|
      {lat: property.lat, lng: property.lon, count: property.price }
    end
  end

end
