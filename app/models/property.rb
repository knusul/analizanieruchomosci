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
    Property.select(" *, ( updated_at::date - created_at::date )").where("updated_at::date < ?", Date.today).to_a.count
    10.times.map(&:day).map(&:ago).map { |day|
      sold_rooms = from_day(day).select(" *, ( updated_at::date - created_at::date ) as diff").where("updated_at::date < ?", Date.today).map(&:diff)
      {"#{day.strftime("%B %d, %Y")}": sold_rooms.count == 0 ? 0: sold_rooms.sum.to_f/sold_rooms.count }
    }
  end
end
