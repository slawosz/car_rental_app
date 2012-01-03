class CarType < ActiveRecord::Base
  include RailsPanel::ActiveRecordInspector
  has_many :cars

  validates :name, :presence => :true

  def self.form_attributes_keys
    super - [:cars]
  end
end
