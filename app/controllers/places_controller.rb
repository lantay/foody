class PlacesController < ApplicationController

  def index
     @places = Place.paginate(:page => params[:page], :per_page => 10)   

       respond_to do |format|
        format.html  #index.html.erb
        format.json { render json: @places }
     end 
  end

  def new
    @place=Place.new
  end

end