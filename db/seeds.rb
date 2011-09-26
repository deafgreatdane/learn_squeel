# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
petsmart = Store.create({:name=>"Petsmart",:state => "MN"})
amazon = Store.create({:name=>"Amazon",:state => "WA"})
breeder1 = Store.create({:name=>"Dane Breeder",:state => "WI"})
breeder2 = Store.create({:name=>"BC Breeder",:state => "WI"})
neighbor = Store.create({:name=>"Neighbor",:state => "MN"})
humane_society = Store.create({:name=>"Humane Society",:state => "MN"})

alice = Person.create({ :first_name => "Alice", :last_name => "Angora", :birthday =>'1/1/1970', :state => "MN"})
bob = Person.create({ :first_name => "Bob", :last_name => "Bogart", :birthday =>'2/1/1971', :state => "WI"})
carl = Person.create( :first_name => "Carl", :last_name => "Cupid", :birthday =>'3/1/1972', :state => "MI")
diane = Person.create( :first_name => "Diane", :last_name => "Debuque", :birthday =>'4/1/1973', :state => "IA")

spot = Pet.create( :name =>"Spot", :kind => "dog", :person =>carl , :store => humane_society)
marble = Pet.create(:name =>"Marble",:kind => "cat",:person => carl, :store => neighbor)
fluffy = Pet.create( :name =>"Fluffy", :kind => "cat", :person => diane)
zoom = Pet.create(:name =>"Zoom",:kind =>"dog", :person =>alice , :store =>breeder2 )
scooby = Pet.create(:name =>"Scooby",:kind => "dog", :person =>alice , :store =>breeder1 )

Toy.create([
           { :pet_id => spot.id , :name => "bone" , :price => 1.29 , :store =>breeder2},
           { :pet_id => spot.id , :name => "frisbee" , :price => 2.39 , :store =>petsmart},
           { :pet_id => spot.id , :name => "squeeky" , :price => 5.59 , :store =>amazon},
           { :pet => zoom , :name => "frisbee" , :price => 2.39 , :store => petsmart},
           { :pet => zoom , :name => "frisbee" , :price => 2.59 , :store => amazon},
           { :pet => scooby , :name => "bone" , :price => 3.59 , :store => breeder1},
            { :pet_id => fluffy.id , :name => "yarn" , :price => 0.59, :store =>petsmart }
           ])