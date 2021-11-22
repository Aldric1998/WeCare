class CreateFirstaidkitSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :firstaidkit_specialists do |t|
      t.references :speciality, null: false, foreign_key: true
      t.references :firstaidkit_answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
