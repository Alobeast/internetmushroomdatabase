# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

attribute_shortcuts = {
  "edible" => {"e" => true, "p" => false},
  "cap_shape" => {"b" => "bell", "c" => "conical", "x" => "convex", "f" => "flat", "k" => "knobbed", "s" => "sunken"},
  "cap_surface" => {"f" => "fibrous", "g" => "grooves", "y" => "scaly", "s" => "smooth"},
  "cap_color" => {"n" => "brown", "b" => "buff", "c" => "cinnamon", "g" => "gray", "r" => "green", "p" => "pink", "u" => "purple", "e" => "red", "w" => "white", "y" => "yellow"},
  "bruises" => {"t" => true, "f" => false},
  "odor" => {"a" => "almond", "l" => "anise", "c" => "creosote", "y" => "fishy", "f" => "foul", "m" => "musty", "n" => "none", "p" => "pungent", "s" => "spicy"},
  "gill_attachment" => {"a" => "attached", "d" => "descending", "f" => "free", "n" => "notched"},
  "gill_spacing" => {"c" => "close", "w" => "crowded", "d" => "distant"},
  "gill_size" => {"b" => "broad", "n" => "narrow"},
  "gill_color" => {"k" => "black", "n" => "brown", "b" => "buff", "h" => "chocolate", "g" => "gray", "r" => "green", "o" => "orange", "p" => "pink", "u" => "purple", "e" => "red", "w" => "white", "y" => "yellow"},
  "stalk_shape" => {"e" => "enlarging", "t" => "tapering"},
  "stalk_root" => {"b" => "bulbous", "c" => "club", "u" => "cup", "e" => "equal", "z" => "rhizomorphs", "r" => "rooted", "?" => nil},
  "stalk_surface_above_ring" => {"f" => "fibrous", "y" => "scaly", "k" => "silky", "s" => "smooth"},
  "stalk_surface_below_ring" => {"f" => "fibrous", "y" => "scaly", "k" => "silky", "s" => "smooth"},
  "stalk_color_above_ring" => {"n" => "brown", "b" => "buff", "c" => "cinnamon", "g" => "gray", "o" => "orange", "p" => "pink", "e" => "red", "w" => "white", "y" => "yellow"},
  "stalk_color_below_ring" => {"n" => "brown", "b" => "buff", "c" => "cinnamon", "g" => "gray", "o" => "orange", "p" => "pink", "e" => "red", "w" => "white", "y" => "yellow"},
  "veil_type" => {"p" => "partial", "u" => "universal"},
  "veil_color" => {"n" => "brown", "o" => "orange", "w" => "white", "y" => "yellow"},
  "ring_number" => {"n" => 0, "o" => 1, "t" => 2},
  "ring_type" => {"c" => "cobwebby", "e" => "evanescent", "f" => "flaring", "l" => "large", "n" => "none", "p" => "pendant", "s" => "sheathing", "z" => "zone"},
  "spore_print_color" => {"k" => "black", "n" => "brown", "b" => "buff", "h" => "chocolate", "r" => "green", "o" => "orange", "u" => "purple", "w" => "white", "y" => "yellow"},
  "population" => {"a" => "abundant", "c" => "clustered", "n" => "numerous", "s" => "scattered", "v" => "several", "y" => "solitary"},
  "habitat" => {"g" => "grasses", "l" => "leaves", "m" => "meadows", "p" => "paths", "u" => "urban", "w" => "waste", "d" => "woods"}
}

CSV.foreach("db/dataset/mushrooms.csv") do |row|
  attributes = {
    edible: attribute_shortcuts["edible"][row[0]],
    cap_shape: attribute_shortcuts["cap_shape"][row[1]],
    cap_surface: attribute_shortcuts["cap_surface"][row[2]],
    cap_color: attribute_shortcuts["cap_color"][row[3]],
    bruises: attribute_shortcuts["bruises"][row[4]],
    odor: attribute_shortcuts["odor"][row[5]],
    gill_attachment: attribute_shortcuts["gill_attachment"][row[6]],
    gill_spacing: attribute_shortcuts["gill_spacing"][row[7]],
    gill_size: attribute_shortcuts["gill_size"][row[8]],
    gill_color: attribute_shortcuts["gill_color"][row[9]],
    stalk_shape: attribute_shortcuts["stalk_shape"][row[10]],
    stalk_root: attribute_shortcuts["stalk_root"][row[11]],
    stalk_surface_above_ring: attribute_shortcuts["stalk_surface_above_ring"][row[12]],
    stalk_surface_below_ring: attribute_shortcuts["stalk_surface_below_ring"][row[13]],
    stalk_color_above_ring: attribute_shortcuts["stalk_color_above_ring"][row[14]],
    stalk_color_below_ring: attribute_shortcuts["stalk_color_below_ring"][row[15]],
    veil_type: attribute_shortcuts["veil_type"][row[16]],
    veil_color: attribute_shortcuts["veil_color"][row[17]],
    ring_number: attribute_shortcuts["ring_number"][row[18]],
    ring_type: attribute_shortcuts["ring_type"][row[19]],
    spore_print_color: attribute_shortcuts["spore_print_color"][row[20]],
    population: attribute_shortcuts["population"][row[21]],
    habitat: attribute_shortcuts["habitat"][row[22]]
  }
  mushroom = Mushroom.create(attributes)
end
