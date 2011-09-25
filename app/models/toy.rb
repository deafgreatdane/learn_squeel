class Toy < ActiveRecord::Base
  belongs_to :pet
  belongs_to :store
end
