class LocalityController < ApplicationController
  def index
    @areas = Locality.all
    @hash = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
    end
    #raise @hash.to_yaml
  end
end
