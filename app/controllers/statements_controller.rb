class StatementsController < ApplicationController

  def show
    @statement = Statement.find(params[:id])
    if @statement.answers.empty?
      @current_question = Question.find_by position: 1
    else
      last_answer = @statement.answers.last
      @current_question = Question.find_by position: last_answer.possible_answer.next_position

    end
    first_aid_kits = @statement.answers.flat_map{|ans|  ans.possible_answer }.flat_map{|p_ans|  p_ans.firstaidkit_answers }.compact
  end

  def index

  end
end
