class Api::BandsController < ApplicationController
  def index
    @bands = Band.all
    render 'index.json.jb'
  end

  def show
    @band = Band.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
