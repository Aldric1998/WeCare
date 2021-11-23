class Statement < ApplicationRecord
  belong_to :user
  has_many :answers
end
