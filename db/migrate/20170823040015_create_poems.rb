class CreatePoems < ActiveRecord::Migration[5.1]
  def change
    create_table :poems do |t|
      t.title :string
      t.body :text
      t.author :string

      t.timestamps
    end
  end
end
