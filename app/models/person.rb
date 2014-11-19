class Person < ActiveRecord::Base
  has_many :incidents
  belongs_to :company
  belongs_to :state

  validates :name, presence: true


end
