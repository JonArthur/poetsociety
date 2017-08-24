class ChangeFieldNameOfComments < ActiveRecord::Migration[5.1]
  def change
  	rename_column :comments, :comment, :body
  end
end
