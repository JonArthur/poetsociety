class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
  	change_column :poems, :author, :string
  end
end
