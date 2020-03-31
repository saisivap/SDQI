class Pravite < ApplicationRecord
  belongs_to :user

  # def self.search(search)
  #   if search
  #     where(["block LIKE ?","%#{search}%"])
  #   else
  #     all
  #   end
  # end
  include PgSearch
  pg_search_scope :search_by_full_details, against: [:id, :block,:flate,:created_at]
end
