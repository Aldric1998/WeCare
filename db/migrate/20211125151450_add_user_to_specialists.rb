class AddUserToSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialists, :user, foreign_key: true
  end
end
