class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :state

      t.timestamps
    end
    add_column :toys, :store_id, :integer
    add_column :pets, :store_id, :integer
  end
end
