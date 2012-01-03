class Rental < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  belongs_to :client
  belongs_to :car
  has_one :coupon
  validates :client, :presence => true
  validates :car, :presence => true
  validates :from, :presence => true

  before_create do |rental|
    rental.daily_fee = rental.car.daily_fee
  end

  def total_cost
    ((from.to_date)..(to.to_date)).to_a.length * daily_fee
  end
end
