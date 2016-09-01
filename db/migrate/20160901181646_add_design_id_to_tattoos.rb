class AddDesignIdToTattoos < ActiveRecord::Migration[5.0]
  def change
    add_column :tattoos, :design_id, :integer
  end
end
