class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :beginning_id
      t.integer :ending_id
      t.string :text
      t.integer :likes
    end
  end
end
