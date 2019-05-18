class MushroomsController < ApplicationController
  def index
    @mushrooms = Mushroom.where(nil).page(params[:page]).per_page(25) # creates an anonymous scope
    filtering_params(params).each do |key, value|
      @mushrooms = @mushrooms.public_send(key, value).page(params[:page]).per_page(25) if value.present?
      # public_send Invokes the method identified by symbol, passing it any arguments specified. Unlike send, public_send calls public methods only.
    end
    @mushroom_attributes = Mushroom.attribute_names - ["created_at", "updated_at", "id"]
    @criterias = filtering_params(params).delete_if {|key, value| value == "" }
  end

  private

  def filtering_params(params)
    params.slice(:edible, :cap_shape, :cap_surface, :cap_color, :bruises, :odor, :gill_attachment, :gill_spacing, :gill_size, :gill_color, :stalk_shape, :stalk_root, :stalk_surface_above_ring, :stalk_surface_below_ring, :stalk_color_above_ring, :stalk_color_below_ring, :veil_type, :veil_color, :ring_number, :ring_type, :spore_print_color, :population, :habitat)
    # Slice a hash to include only the given keys. Returns a hash containing the given keys and their values
  end
end
