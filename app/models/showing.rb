class Showing < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :movie
  belongs_to :cinema
  has_many :bookings, dependent: :destroy

  validates :date, presence: true, comparison: { greater_than: Time.zone.now, message: "must be set in the future or later." }
  validates :time, presence: true  
end
