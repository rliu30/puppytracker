class CreatePuppies < ActiveRecord::Migration
  def change
    create_table :puppies do |t|
      t.string :name
      t.integer :years
      t.string :color

      t.timestamps null: false
    end
  end
end
