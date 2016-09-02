class Tattoo < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :tattoos_colors
  has_many :colors, through: :tattoos_colors

  def design=(hash)
    self.design_id = (Design.find_or_create_by(hash).id)
  end

  def colors_attributes=(hash)
    binding.pry 
  end
end
