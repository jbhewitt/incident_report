class Company < ActiveRecord::Base
  has_many :incidents
  has_many :people

  validates :name, presence: true
  validates :state, presence: true

end
