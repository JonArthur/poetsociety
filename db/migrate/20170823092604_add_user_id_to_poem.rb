class AddUserIdToPoem < ActiveRecord::Migration[5.1]
  def change
    add_column :poems, :user_id, :integer
  end
end
