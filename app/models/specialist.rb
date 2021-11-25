class Specialist < ApplicationRecord
  belongs_to :speciality
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :consultations, dependent: :destroy
  has_one_attached :picture

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :first_name, :last_name, :address ],
    associated_against: {
      speciality: [ :name ]
  },
  using: {
    tsearch: { prefix: true }
  }
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
