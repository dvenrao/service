class HomeController < ApplicationController
  #before_filter :authenticate_user!
  layout 'fluid'

  def index
    render :layout => 'fluid'
  end

  def half_map
    @areas = Locality.all
    @hash = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
    end
    render :layout => 'half_map'
  end

  def full_map
    @areas = Locality.all
    @hash = Gmaps4rails.build_markers(@areas) do |area, marker|
      marker.lat area.latitude
      marker.lng area.longitude
    end
    render :layout => 'full_map'
  end
end
