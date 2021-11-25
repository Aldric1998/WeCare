class AddUserToSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialists, :user, foreign_key: true, null: true
  end
end
