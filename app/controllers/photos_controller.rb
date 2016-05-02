class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id]})

    #@photo_source = p.source
    #@photo_caption = p.caption
    #@photo_id = p.id
  end

  def new_form

  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    #render("create_row.html.erb")

    redirect_to("/photos")
  end


  def destroy
    delete = Photo.find_by({ :id => params[:id]})
    delete.destroy

    redirect_to("/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id]})
  end

  def update_row
    u = Photo.find_by({ :id => params[:id]})
    u.caption = params[:the_caption]
    u.source = params[:the_source]
    u.save

    redirect_to("/photos")
  end

end
