class CreateEndings < ActiveRecord::Migration[5.2]
  def change
    create_table :endings do |t|
      t.string :word
    end
  end
end
