class CreateFirstaidkitAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :firstaidkit_answers do |t|
      t.string :content
      t.references :possible_answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
