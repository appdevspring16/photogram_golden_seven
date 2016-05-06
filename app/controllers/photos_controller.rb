class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form
    render("new_form.html.erb")
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("http://localhost:3000/photos/")
  end

  def delete
    p = Photo.find_by({ :id => params[:id]}).destroy
    redirect_to("http://localhost:3000/photos/")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    p = Photo.find_by({ :id => params[:id]})
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save
    redirect_to("http://localhost:3000/photos/#{params[:id]}")
  end
end
