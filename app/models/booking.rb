class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lookalike

  validates :date, presence: true 
end
