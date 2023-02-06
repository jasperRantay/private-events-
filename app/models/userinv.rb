class Userinv < ApplicationRecord
  belongs_to :user
  has_many :userinvts, through: :users
end
