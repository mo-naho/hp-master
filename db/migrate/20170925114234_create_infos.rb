class CreateInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :infos do |t|
      t.string :main
      t.datetime :my_date
      t.integer :category_id

      t.timestamps
    end
  end
end
