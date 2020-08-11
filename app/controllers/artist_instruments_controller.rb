class ArtistInstrumentsController < ApplicationController

  def new 
    @artist_instrument = ArtistInstrument.new

    @instruments = Instrument.all
    @artists = Artist.all
    # render :new
  end 

  def create 
    artist_instrument = ArtistInstrument.create(artist_instrument_params)

    redirect_to artist_path(artist_instrument.artist)
  end

  private 

  def artist_instrument_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end 

end
