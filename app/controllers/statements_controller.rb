class StatementsController < ApplicationController
  def index
    @specialists = Specialist.all
    @markers = @specialists.geocoded.map do |specialist|
      {
        lat: specialist.latitude,
        lng: specialist.longitude,
        info_window: render_to_string(partial: "info_window", locals: { specialist: specialist })
      }
    end
  end
end
