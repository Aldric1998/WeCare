class AddVisibilityToSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_column :specialists, :visibility, :boolean
  end
end
