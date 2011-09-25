class Store < ActiveRecord::Base
  has_many :toys
  has_many :pets
end
