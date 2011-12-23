class Rental < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  belongs_to :client
  belongs_to :car
  has_one :coupon

  def total_cost
    ((from.to_date)..(to.to_date)).to_a.length * daily_fee
  end
end
