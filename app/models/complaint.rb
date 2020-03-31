class Complaint < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :feedbacks

  include PgSearch
  pg_search_scope :search_by_full_details, against: [:id, :floor,:type_of_property,:created_at]
end
