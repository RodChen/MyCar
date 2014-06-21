class MainController < ApplicationController
  def index
   	@cars = Car.order('created_at DESC').first(3)

  end
end
