class AddCoordinatesToFirstaidkitSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_column :specialists, :latitude, :float
    add_column :specialists, :longitude, :float
  end
end
