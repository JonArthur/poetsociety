class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
  	change_column :poems, :author,  'integer USING CAST(author AS integer)'
  end
end
