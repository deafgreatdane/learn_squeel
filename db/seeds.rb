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