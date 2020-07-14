class Api::BandsController < ApplicationController
  def index
    @bands = Band.all
    render 'index.json.jb'
  end

  def show
    @band = Band.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @band = Band.create(
    name: params[:name],
    hit_song: params[:hit_song],
    lead_singer: params[:lead_singer],
    guitarist: params[:guitarist],
    bassist: params[:bassist],
    drummer: params[:drummer],
    gig_rate: params[:gig_rate]
    )
    @band.save
    render 'show.json.jb'
  end
  
  def update
    @band = Band.find_by(id: params[:id])
    @band.update(
      name: params[:name] || @band.name,
      hit_song: params[:hit_song] || @band.hit_song,
      lead_singer: params[:lead_singer] || @band.lead_singer,
      guitarist: params[:guitarist] || @band.guitarist,
      bassist: params[:bassist] || @band.bassist,
      drummer: params[:drummer] || @band.drummer,
      gig_rate: params[:gig_rate] || @band.gig_rate
      )
      render 'show.json.jb'
  end
  
  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    render json: {message: "You have successfully deleted the band."}
  end


  
end
