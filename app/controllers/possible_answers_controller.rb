class PossibleAnswersController < ApplicationController
  def index
    @possible_answers = PossibleAnswer.all
  end
end
