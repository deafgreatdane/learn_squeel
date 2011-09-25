class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.integer :pet_id
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
