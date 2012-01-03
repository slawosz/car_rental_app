class ApplicationController < ActionController::Base
  # include RailsPanel::Resources
  protect_from_forgery
  before_filter :set_resources_menu

  private
  def set_resources_menu
    @resources_menu = [
      ["Cars", cars_path],
      ["CarTypes", car_types_path],
      ["Coupons", coupons_path],
      ["Equipments", equipments_path],
      ["Rentals", rentals_path],
      ["Clients", clients_path]
    ]
  end

  def self.inherited(klass)
    if klass.name !=~ /Devise/
      klass.send :include, RailsPanel::Resources
    end
    super(klass)
  end
end
