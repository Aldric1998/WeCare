class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :statement, null: false, foreign_key: true
      t.references :possible_answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
