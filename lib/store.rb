class Store < ActiveRecord::Base
  has_and_belongs_to_many :shoes
  belongs_to :shoe_stores
end
