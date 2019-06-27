class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.integer :prompt_id
      t.string :text
    end
  end
end
