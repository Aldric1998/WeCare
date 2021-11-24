class SpecialistsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    if params[:query].present?
      sql_query = " \
        specialists.first_name @@ :query \
        OR specialists.last_name @@ :query \
        OR specialists.address @@ :query \
        OR users.first_name @@ :query \
        OR users.last_name @@ :query \
      "
      @specialists = Specialist.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    else
      @specialists = Specialist.all
    end

    @markers = @specialists.geocoded.map do |specialist|
      {
        lat: specialist.latitude,
        lng: specialist.longitude,
        info_window: render_to_string(partial: "info_window", locals: { specialist: specialist })
      }
    end
  end

  def new
    @specialist = Specialist.new
  end

  def create
    @specialist = Specialist.new(specialist_params)
    @specialist.user = current_user
    @specialist.availability = true
    @specialist.save
    redirect_to specialist_path(@specialist)
  end

  def show
    @specialist = Specialist.find(params[:id])
    @consultations = @specialist.consultations.where(user: current_user)
    @consultation = Consultation.new
  end

  def destroy
    @specialist = Specialist.find(params[:id])
    @specialist.destroy
    redirect_to specialists_path
  end

  private

  def specialist_params
    params.require(:specialist).permit(:first_name, :last_name, :speciality_id, :address, :phonenumber, :email, :availability, :picture)
  end
end
