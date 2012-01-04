class ApplicationController < ActionController::Base
  include RailsPanel::Resources
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

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
