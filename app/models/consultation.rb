class Consultation < ApplicationRecord
  belongs_to :user
  belongs_to :specialist
end
