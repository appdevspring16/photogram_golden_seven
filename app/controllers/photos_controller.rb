class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    @photo = Photo.find_by({ :id => params[:id]})

  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:caption]
    p.source = params[:source]
    p.save

    # render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def edit_photo
    @edit = Photo.find_by({ :id => params[:id]})
    @edit_caption = @edit.caption
    @edit_source = @edit.source

  end

  def update_row
    edit = Photo.find_by({ :id => params[:id]})
    edit.caption = params[:the_caption]
    edit.source = params[:the_source]
    edit.save

    redirect_to("http://localhost:3000/photos")
  end

  def delete_photo
    x = Photo.find_by({ :id => params[:id]})
    x.destroy

    redirect_to("http://localhost:3000/photos")
  end
end
