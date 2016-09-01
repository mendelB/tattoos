class CreateTattoosColors < ActiveRecord::Migration[5.0]
  def change
    create_table :tattoos_colors do |t|
      t.references :tattoo, foreign_key: true
      t.references :color, foreign_key: true

      t.timestamps
    end
  end
end
