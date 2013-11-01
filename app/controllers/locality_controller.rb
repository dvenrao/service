class LocalityController < ApplicationController
  def index
    @users = Locality.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
    #raise @hash.to_yaml
  end
end
