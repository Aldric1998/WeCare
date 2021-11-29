class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    @consultations = Consultation.where(id: @user.consultations)
    # @markers = @specialist.geocode
    # @markers = [{
    #     lat: @specialist.latitude,
    #     lng: @specialist.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { specialist: @specialist }),
    #   }]
  end
end
