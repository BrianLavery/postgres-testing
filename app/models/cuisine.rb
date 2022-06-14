class Cuisine < ApplicationRecord
    # Associations: Restaurants
    has_many :restaurant_cuisines, dependent: :destroy
    has_many :restaurants, through: :restaurant_cuisines
end