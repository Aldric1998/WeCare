class CreatePossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :possible_answers do |t|
      t.string :content
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
