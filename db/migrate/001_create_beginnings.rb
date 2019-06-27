class CreateBeginnings < ActiveRecord::Migration[5.2]
  def change
    create_table :beginnings do |t|
      t.string :word
    end
  end
end
