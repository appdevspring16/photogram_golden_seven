class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
  @photo = Photo.find_by({:id=> params[:id]})
  # @photo_source = @p.source
  # @photo_caption = @p.caption
  # @photo_id = @p.id
end

def new_form
end

def create_row
  p = Photo.new
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.save

  #rather than render("create_row.html.erb") we can use redirect to send user back to main screen
redirect_to("http://localhost:3000/photos")
end

def destroy
  p=Photo.find_by({:id=> params[:id]})
  p.destroy

  redirect_to("http://localhost:3000/photos")
end

def edit_form
  @photo = Photo.find_by({:id=> params[:id]})

end

def update_row
    # @photo = Photo.find_by({:id=> params[:id]})
    p = Photo.find_by({ :id => params[:id]})
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save
      redirect_to("http://localhost:3000/photos/#{p.id}")

  end

end
