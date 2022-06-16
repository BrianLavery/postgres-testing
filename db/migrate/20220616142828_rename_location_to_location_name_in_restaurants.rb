class RenameLocationToLocationNameInRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :location, :location_name
  end
end
