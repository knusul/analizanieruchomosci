class Property < ApplicationRecord

  def self.from_day(date)
    Property.where(created_at: date.midnight..date.end_of_day)
  end

  def self.by_day
    10.times.map(&:day).map(&:ago).map { |day|
      {"#{day.strftime("%B %d, %Y")}": from_day(day).count}
    }

  end
end
