class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :complaint
  has_many :feedbacks
  has_many :shareds
  has_many :pravites
  # has_many :aminitebookings
  has_many :bookingaminites
  include PgSearch
  pg_search_scope :search_by_full_details, against: [:id, :flate,:first_name,:last_name,:email,:role,:created_at]
end
