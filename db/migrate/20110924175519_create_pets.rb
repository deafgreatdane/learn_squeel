class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :person_id
      t.string :kind
      t.string :name

      t.timestamps
    end
  end
end
