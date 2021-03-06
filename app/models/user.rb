class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include SimpleDiscussion::ForumUser
  has_one :specialist
  has_many :consultations
  def name
    "#{first_name} #{last_name}"
  end
end
