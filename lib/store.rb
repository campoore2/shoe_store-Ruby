class Store < ActiveRecord::Base
  has_and_belongs_to_many :shoes
  belongs_to :shoe_stores
  before_save(:cap_letter)


private
  define_method(:cap_letter) do
    self.name=(name().titlecase())
  end
end
