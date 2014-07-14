class Mixtape < ActiveRecord::Base
  has_many :tracks, -> {order(position: :asc)}, dependent: :destroy
  validates :title, presence: true

end
