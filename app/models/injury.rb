class Injury < ActiveRecord::Base
  has_many :incidents
end
