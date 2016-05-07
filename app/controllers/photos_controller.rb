class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by ({ :id => params[:id]})
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save
    redirect_to("http://localhost:3000")
  end

  def destroy
    @photodes = Photo.find_by ({ :id => params[:id]})
    @photodes.destroy
    redirect_to("http://localhost:3000")
  end

  def edit_form
    @photoed = Photo.find_by ({ :id => params[:id]})
  end

  def update_row
    @photoed = Photo.find_by ({ :id => params[:id]})
    @photoed.caption = params["the_caption"]
    @photoed.source = params["the_source"]
    @photoed.save
    redirect_to("http://localhost:3000/photos/" + @photoed.id.to_s)
  end

end
