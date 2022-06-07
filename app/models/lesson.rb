class Lesson < ApplicationRecord
  geocoded_by :address
  belongs_to :user
  belongs_to :category
  has_many :bookings, dependent: :destroy
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :questions, dependent: :destroy
  has_one_attached :photo

  def available_places
    all  = self.places
    took = Booking.where(lesson: self, status: true).count

    all - took
  end
end
