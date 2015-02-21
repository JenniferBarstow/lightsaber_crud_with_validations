class Lightsaber < ActiveRecord::Base
  validates :owner, presence: true
  validates :color, presence: true
end
