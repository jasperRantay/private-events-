class Invite < ApplicationRecord
  belongs_to :user
  belongs_to :event
  #belongs_to :registration
end
