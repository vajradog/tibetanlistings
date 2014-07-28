class Listing < ActiveRecord::Base
	has_many :listing_categories
  has_many :categories, through: :listing_categories

  validates :name, presence: true
end