class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @statement = Statement.new
  end

  def dashboard
    @user = current_user
    @consultations = Consultation.where(id: @user.consultations)
  end

end
