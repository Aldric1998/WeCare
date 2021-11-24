class Specialist < ApplicationRecord
  belongs_to :speciality
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :consultations, dependent: :destroy
  has_one_attached :picture

  # include PgSearch::Model
  # pg_search_scope :global_search,
    # against: [ :first_name, :last_name, :address ],
    # associated_against: {
      # user: [ :first_name, :last_name ]
    # },
    # using: {
      # tsearch: { prefix: true }
    # }
  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?
end
