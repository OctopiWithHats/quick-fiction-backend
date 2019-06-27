class CreatePrompts < ActiveRecord::Migration[5.2]
  def change
    create_table :prompts do |t|
      t.integer :beginning_id
      t.integer :ending_id
    end
  end
end
