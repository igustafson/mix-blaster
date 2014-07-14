class Track < ActiveRecord::Base
  belongs_to :mixtape
  acts_as_list scope: :mixtape

  def track_no
    position
  end
end
