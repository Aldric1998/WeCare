class AnswersController < ApplicationController
  def index
    @answer = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end
end
