class RentalsController < ApplicationController
  before_filter :authenticate_user!
end

