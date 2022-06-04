class Event < ApplicationRecord
  validates_inclusion_of :date, 
  in: Date.today..Date.today+99.years,
  message: "Must be set in the future"
  
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :attendees, through: :invitations
end
