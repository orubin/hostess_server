class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :name
      t.text :description
      t.references :restaurant, index: true, foreign_key: true
      t.location_lng :integer
      t.location_lat :integer
      t.size :integer
      t.timestamps null: false
    end
  end
end
