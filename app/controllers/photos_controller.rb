class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def new_form
    #code
  end

  def creat_row
    #code
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    redirect_to("http://localhost:3000/photos")

    # render("creat_row.html.erb")
  end

  def destroy
    d = Photo.find_by({ :id => params[:id]})
    d.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    p = Photo.find_by({ :id => params[:id]})
@psource = p.source
@pcaption = p.caption
@pid = p.id
  end

  def update_row
    p = Photo.find_by({ :id => params[:id]})
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

    redirect_to("/photos/#{p.id}")
  end

end
