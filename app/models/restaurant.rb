class Restaurant < ApplicationRecord
    # Associations: Cuisines
    has_many :restaurant_cuisines, dependent: :destroy
    has_many :cuisines, through: :restaurant_cuisines
    
    # PgSearch setup
    include PgSearch::Model
    pg_search_scope :search_by_location,
      against: [:location_name],
      using: {
        tsearch: { prefix: true }
      }
    
    
end