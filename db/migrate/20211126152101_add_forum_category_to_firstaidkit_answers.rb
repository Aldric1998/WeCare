class AddForumCategoryToFirstaidkitAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :firstaidkit_answers, :forum_category
  end
end
