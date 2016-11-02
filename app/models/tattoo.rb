class Tattoo < ApplicationRecord
  belongs_to :user
  belongs_to :design
  has_many :tattoos_colors
  has_many :colors, through: :tattoos_colors
  # accepts_nested_attributes_for :colors

  def colors_attributes=(attrs)
    attrs.values.each do |hash|
      if !(hash[:name].empty?)
        c = Color.find_or_create(hash)
        self.tattoos_colors.build(color_id: c.id)
      end
    end
  end

  def new_design=(hash)
    if !(hash[:name].empty?)
      design = Design.new(hash)
      self.design = design
    end
  end 
end
