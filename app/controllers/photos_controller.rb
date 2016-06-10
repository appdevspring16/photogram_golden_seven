class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def new_form
    # no actual processing
  end

  def create_row

    p = Photo.new
    p.caption = params[:the_caption]
    p.caption = params[:the_source]
    p.save

    # render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")

  end

  def edit

    @photo = Photo.find(params[:id])

  end

  def update_photo
    p =Photo.find(params[:id])
    p.caption = params[:the_caption]
    p.caption = params[:the_source]
    p.save

    redirect_to ("photos")

  end


  def show
    @photo = Photo.find_by ({ :id=> params[:id]})
  end

  #DRY it up (Pre-DRYing)
  # def show
  #   p = Photo.find_by ({ :id=> params[:id]})
  #   @photo_source = p.source
  #   @photo_caption = p.caption
  #   @photo_id = p.id
  # end

  # Now the controller needs to know how to handle each variable
  # def show
  #   @photo.source
  #   @photo.caption
  #   @photo.id
  #   render ("show.html.erb")
  # end


  # This is the basic function of the "Show" action. After the hmtl portion has been created extract all of the variables and copy them here
  # def show
  #   render ("show.html.erb")
  # end



  def destroy
    @photo = Photo.find_by({:id=>params[:id]})
    @photo.destroy
    redirect_to "/"
  end









end
