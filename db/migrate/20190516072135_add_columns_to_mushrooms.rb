class AddColumnsToMushrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :mushrooms, :edible, :boolean
    add_column :mushrooms, :cap_shape, :string
    add_column :mushrooms, :cap_surface, :string
    add_column :mushrooms, :cap_color, :string
    add_column :mushrooms, :bruises, :boolean
    add_column :mushrooms, :odor, :string
    add_column :mushrooms, :gill_attachment, :string
    add_column :mushrooms, :gill_spacing, :string
    add_column :mushrooms, :gill_size, :string
    add_column :mushrooms, :gill_color, :string
    add_column :mushrooms, :stalk_shape, :string
    add_column :mushrooms, :stalk_root, :string
    add_column :mushrooms, :stalk_surface_above_ring, :string
    add_column :mushrooms, :stalk_surface_below_ring, :string
    add_column :mushrooms, :stalk_color_above_ring, :string
    add_column :mushrooms, :stalk_color_below_ring, :string
    add_column :mushrooms, :veil_type, :string
    add_column :mushrooms, :veil_color, :string
    add_column :mushrooms, :ring_number, :integer
    add_column :mushrooms, :ring_type, :string
    add_column :mushrooms, :spore_print_color, :string
    add_column :mushrooms, :population, :string
    add_column :mushrooms, :habitat, :string
  end
end
