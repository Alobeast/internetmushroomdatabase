class Mushroom < ApplicationRecord
  scope :edible, -> (edible) { where edible: edible }
  scope :cap_shape, -> (cap_shape) { where cap_shape: cap_shape }
  scope :cap_surface, -> (cap_surface) { where cap_surface: cap_surface}
  scope :cap_color, -> (cap_color) { where cap_color: cap_color}
  scope :bruises, -> (bruises) { where bruises: bruises}
  scope :odor, -> (odor) { where odor: odor}
  scope :gill_attachment, -> (gill_attachment) { where gill_attachment: gill_attachment}
  scope :gill_spacing, -> (gill_spacing) { where gill_spacing: gill_spacing}
  scope :gill_size, -> (gill_size) { where gill_size: gill_size}
  scope :gill_color, -> (gill_color) { where gill_color: gill_color}
  scope :stalk_shape, -> (stalk_shape) { where stalk_shape: stalk_shape}
  scope :stalk_root, -> (stalk_root) { where stalk_root: stalk_root}
  scope :stalk_surface_above_ring, -> (stalk_surface_above_ring) { where stalk_surface_above_ring: stalk_surface_above_ring}
  scope :stalk_surface_below_ring, -> (stalk_surface_below_ring) { where stalk_surface_below_ring: stalk_surface_below_ring}
  scope :stalk_color_above_ring, -> (stalk_color_above_ring) { where stalk_color_above_ring: stalk_color_above_ring}
  scope :stalk_color_below_ring, -> (stalk_color_below_ring) { where stalk_color_below_ring: stalk_color_below_ring}
  scope :veil_type, -> (veil_type) { where veil_type: veil_type}
  scope :veil_color, -> (veil_color) { where veil_color: veil_color}
  scope :ring_number, -> (ring_number) { where ring_number: ring_number}
  scope :ring_type, -> (ring_type) { where ring_type: ring_type}
  scope :spore_print_color, -> (spore_print_color) { where spore_print_color: spore_print_color}
  scope :population, -> (population) { where population: population}
  scope :habitat, -> (habitat) { where habitat: habitat}
  # Each of these scopes defines a class method on Product that can be uses to limit the results you get back.
  # the controller can use these scopes to filter results for example => @poisonous-mushrooms = Mushroom.edible(false)

  MUSHROOM_CONSTANTS = {
    :edible => [true, false],
    :cap_shape => ["bell", "conical", "convex", "flat", "knobbed", "sunken"],
    :cap_surface => ["fibrous", "grooves", "scaly", "smooth"],
    :cap_color => ["brown", "buff", "cinnamon", "gray", "green", "pink", "purple", "red", "white", "yellow"],
    :bruises => [true, false],
    :odor => ["almond", "anise", "creosote", "fishy", "foul", "musty", "none", "pungent", "spicy"],
    :gill_attachment => ["attached", "descending", "free", "notched"],
    :gill_spacing => ["close", "crowded", "distant"],
    :gill_size => ["broad", "narrow"],
    :gill_color => ["black", "brown", "buff", "chocolate", "gray", "green", "orange", "pink", "purple", "red", "white", "yellow"],
    :stalk_shape => ["enlarging", "tapering"],
    :stalk_root => ["bulbous", "club", "cup", "equal", "rhizomorphs", "rooted", nil],
    :stalk_surface_above_ring => ["fibrous", "scaly", "silky", "smooth"],
    :stalk_surface_below_ring => ["fibrous", "scaly", "silky", "smooth"],
    :stalk_color_above_ring => ["brown", "buff", "cinnamon", "gray", "orange", "pink", "red", "white", "yellow"],
    :stalk_color_below_ring => ["brown", "buff", "cinnamon", "gray", "orange", "pink", "red", "white", "yellow"],
    :veil_type => ["partial", "universal"],
    :veil_color => ["brown", "orange", "white", "yellow"],
    :ring_number => [0, 1, 2],
    :ring_type => ["cobwebby", "evanescent", "flaring", "large", "none", "pendant", "sheathing", "zone"],
    :spore_print_color => ["black", "brown", "buff", "chocolate", "green", "orange", "purple", "white", "yellow"],
    :population => ["abundant", "clustered", "numerous", "scattered", "several", "solitary"],
    :habitat => ["grasses", "leaves", "meadows", "paths", "urban", "waste", "woods"]
  }
end
