class Pet < ActiveRecord::Base
  belongs_to :person
  has_many :toys
  belongs_to :store
end
