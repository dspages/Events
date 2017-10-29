class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.float :price
      t.date :date
      t.integer :uniq_id
      t.timestamps
    end
  end
end
