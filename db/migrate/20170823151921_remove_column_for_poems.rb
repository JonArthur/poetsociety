class RemoveColumnForPoems < ActiveRecord::Migration[5.1]
  def change
  	remove_column :poems, :author
  end
end
