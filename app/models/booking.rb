class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lookalike

  validates :date_time, presence: true
end

