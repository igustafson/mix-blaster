class Track < ActiveRecord::Base
  belongs_to :mixtape
  acts_as_list scope: :mixtape
  attr_accessor :minutes, :seconds

  before_save :set_duration

  validates :title, presence: true

  def track_no
    position
  end

  def set_duration
    if minutes || seconds
      self.duration = (minutes.to_i * 60) + seconds.to_i
    end
  end
end
