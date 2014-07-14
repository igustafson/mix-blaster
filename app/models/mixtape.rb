class Mixtape < ActiveRecord::Base
  validates :title, presence: true
end
