class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.integer :image_id
      t.string :jump_to
      t.text :memo

      t.timestamps
    end
  end
end
