class Shared < ApplicationRecord
  belongs_to :user

  include PgSearch
  pg_search_scope :search_by_full_details, against: [:id, :block,:floor,:created_at]
end
