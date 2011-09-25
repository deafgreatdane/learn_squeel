# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
Person.create([
              { :first_name => "Alice", :last_name => "Angora", :birthday =>'1/1/1970', :state => "MN"},
              { :first_name => "Bob", :last_name => "Bogart", :birthday =>'2/1/1971', :state => "WI"}
              ])
carl = Person.create( :first_name => "Carl", :last_name => "Cupid", :birthday =>'3/1/1972', :state => "MI")
diane = Person.create( :first_name => "Diane", :last_name => "Debuque", :birthday =>'4/1/1973', :state => "IA")

spot = Pet.create( :name =>"Spot", :kind => "dog", :person =>carl)
fluffy = Pet.create( :name =>"Fluffy", :kind => "cat", :person => diane)

Toy.create([
           { :pet_id => spot.id , :name => "bone" , :price => 1.29 },
           { :pet_id => spot.id , :name => "frisbee" , :price => 2.39 },
            { :pet_id => fluffy.id , :name => "yarn" , :price => 0.59 }
           ])