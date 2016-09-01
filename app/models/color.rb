class Color < ApplicationRecord
  has_many :tattoos_colors
  has_many :tattoos, through: :tattoos_colors
end
