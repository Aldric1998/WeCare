class CreateSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :specialists do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.boolean :availability
      t.string :phonenumber
      t.string :email
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
