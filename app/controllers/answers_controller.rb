class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def create
    @statement = Statement.find(params[:answer][:statement_id])
    @answer = Answer.new(answer_params)
    @answer.statement = @statement
    @answer.save!

    redirect_to statement_path(@statement)
  end

  private

  def answer_params
    params.require(:answer).permit(:possible_answer_id)
  end
end
