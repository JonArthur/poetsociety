class ChangeDataTypeForAuthor < ActiveRecord::Migration[5.1]
  def change
  	change_column :poems, :author, :integer
  end
end
