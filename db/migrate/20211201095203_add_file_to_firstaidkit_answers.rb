class AddFileToFirstaidkitAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :firstaidkit_answers, :file, :string
  end
end
