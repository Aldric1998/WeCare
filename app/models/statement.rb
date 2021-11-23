class Statement < ApplicationRecord
  belongs_to :user
  has_many :answers
end
