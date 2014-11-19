class Company < ActiveRecord::Base
  has_many :incidents
  has_many :people
end
