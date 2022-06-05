class Event < ApplicationRecord
  validates_inclusion_of :date, 
  in: Date.today..Date.today+99.years,
  message: "Must be set in the future"


  scope :past_events, -> {where("created_at <= ?", Date.today)}
  scope :upcoming_events, -> {where("created_at >= ?", Date.today)}

  
  belongs_to :creator, class_name: 'User'
  has_many :invitations, dependent: :destroy
  has_many :attendees, through: :invitations
end
