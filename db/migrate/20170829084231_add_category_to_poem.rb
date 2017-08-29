class AddCategoryToPoem < ActiveRecord::Migration[5.1]
  def change
    add_reference :poems, :category, foreign_key: true
  end
end
