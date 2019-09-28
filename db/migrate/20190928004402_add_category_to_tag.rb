class AddCategoryToTag < ActiveRecord::Migration[6.0]
  def change
    add_reference :tags, :category, foreign_key: true
  end
end
