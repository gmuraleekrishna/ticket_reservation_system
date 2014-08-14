class JourneyDetail < ActiveRecord::Base
  validates :from, presence: true, length: { maximum: 50 }
  validates :to, presence: true, length: { maximum: 50 }
  validates :date, presence:true, length: { maximum: 8 }
end
