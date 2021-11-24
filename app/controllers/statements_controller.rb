class StatementsController < ApplicationController

  def show
    @statement = Statement.find(params[:id])
    @answer = Answer.new

    if @statement.answers.empty?
      @current_question = Question.find_by position: 1
      @answers_current_questions = PossibleAnswer.where question: @current_question
    else

      last_answer = @statement.answers.last
      @current_question = Question.find_by position: last_answer.possible_answer.next_position
      @answers_current_questions = PossibleAnswer.where question: @current_question

    end
    first_aid_kits = @statement.answers.flat_map{|ans|  ans.possible_answer }.flat_map{|p_ans|  p_ans.firstaidkit_answers }.compact

  end
  def index

  end
end
