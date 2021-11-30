class ConsultationsController < ApplicationController

  def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.user = current_user
    @specialist = Specialist.find_by(id: params[:specialist_id])
    @consultation.specialist = @specialist
    # @consultation.availability = false
    if @consultation.save!
      redirect_to dashboard_path
    else
      redirect_to specialist_path(@specialist)
    end
  end

  def destroy
    @consultation = Consultation.find(params[:id])
    @specialist = @consultation.specialist
    @consultation.destroy
    redirect_to user_path(current_user)
  end

  def consultation_params
    params.require(:consultation).permit(:start_time, :end_time)
  end
end
