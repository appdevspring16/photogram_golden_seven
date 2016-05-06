class PhotosController < ApplicationController
	def index
		@list_of_photos = Photo.all
	end

	def show 
		@photo = Photo.find_by({ :id => params[:id]})

	end

	def new
	end

	def create_row
		p = Photo.new
		p.caption = params[:the_caption]
		p.source = params[:the_source]
		p.save

		redirect_to("http://localhost:3000/photos")
	end

	def edit_form
		editphoto = Photo.find_by({:id => params[:id]})
		editphoto.caption = params[:the_caption]
		editphoto.source = params[:the_source]
		
		@editphoto = editphoto.caption
		

	end

	def update_row
		

		redirect_to("http://localhost:3000/photos")

	end




	def destroy 
		d = Photo.find(params[:id])
		d.destroy
		redirect_to("http://localhost:3000/photos")
	end


end
