class Job < ActiveRecord::Base
  has_many :incidents
end
