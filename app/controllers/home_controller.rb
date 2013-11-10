class HomeController < ApplicationController
  #before_filter :authenticate_user!
  layout 'fluid'

  def index
    @posts = Post.all
    render :layout => 'fluid'
  end

  def half_map
    #@localities = Locality.all
    @categories = Category.all
    @localities = []
    @posts = Post.paginate(:page => params[:page])
    @posts.each do |post|
      @localities << post.locality
    end
    @hash = Gmaps4rails.build_markers(@localities) do |locality, marker|
      marker.lat locality.latitude
      marker.lng locality.longitude
    end
    render :layout => 'half_map'
  end

  def full_map
    @localities = Locality.all
    @hash = Gmaps4rails.build_markers(@localities) do |locality, marker|
      marker.lat locality.latitude
      marker.lng locality.longitude
    end
    render :layout => 'full_map'
  end
end
