class AddNextPositionToPossibleAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :possible_answers, :next_position, :integer
  end
end
