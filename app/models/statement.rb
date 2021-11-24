class Statement < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :possible_answers ,through: :answers
  has_many :firstaidkit_answers ,through: :possible_answers
  has_many :specialists ,through: :firstaidkit_answers
end
