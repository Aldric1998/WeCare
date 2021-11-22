class Answer < ApplicationRecord
  belongs_to :statement
  belongs_to :possible_answer
end
