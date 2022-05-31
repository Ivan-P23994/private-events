class Event < ApplicationRecord
  
  belongs_to :creator, class_name: "User"
  has_many :attendees, through: :invitations, class_name: "User"
  has_many :invitations, dependent: :destroy
end
