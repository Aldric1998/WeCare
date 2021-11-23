class PossibleAnswer < ApplicationRecord
  belongs_to :question
  has_many :firstaidkit_answers
end
