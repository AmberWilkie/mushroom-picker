class CreateMushrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :mushrooms do |t|
      t.string :cap_shape
      t.string :cap_surface
      t.string :cap_color
      t.string :edible
      t.string :bruises

      t.timestamps
    end
  end
end
