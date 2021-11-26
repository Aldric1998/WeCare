class FirstaidkitAnswer < ApplicationRecord
  belongs_to :possible_answer
  belongs_to :forum_category
  has_many :firstaidkit_specialists
  has_many :specialities, through: :firstaidkit_specialists
  has_many :specialists, through: :specialities
end
