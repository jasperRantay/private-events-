class Invitez < ApplicationRecord
  belongs_to :inviter
  belongs_to :event
end
