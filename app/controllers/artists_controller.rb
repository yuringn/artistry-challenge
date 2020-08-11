class ArtistsController < ApplicationController
  def index 
    @artists = Artist.all
    # render :index
  end 

  def show 
    @artist = Artist.find(params[:id])    
  end 

  def new 
    @artist = Artist.new
  end 

  def create 
    artist = Artist.create(artist_params)
    # artist = Artist.new(artist_params)
  
    # if artist.save 
    if artist.valid?
      redirect_to artist_path(artist)
    else
      flash[:super_sweet_errors] = artist.errors.full_messages
      redirect_to new_artist_path 
    end 
       
  end 
  private 

  def artist_params 
    params.require(:artist).permit(:name, :title, :age)
  end 
end
