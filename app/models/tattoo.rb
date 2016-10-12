class Tattoo < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :tattoos_colors
  has_many :colors, through: :tattoos_colors
end
