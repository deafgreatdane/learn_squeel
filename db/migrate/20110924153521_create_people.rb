class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :state

      t.timestamps
    end
  end
end
