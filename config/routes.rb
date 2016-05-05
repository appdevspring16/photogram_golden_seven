Rails.application.routes.draw do

	get("/", { :controller => "photos", :action => "index" })

	# routes to create photos 
	get("/photos/new", {:controller => "photos", :action => "new"})
	get("/photos/create_photo", {:controller => "photos", :action => "create_row"})
	
	# Routes to READ photos
	get("/photos",           { :controller => "photos", :action => "index" })
	get("/photos/:id",       { :controller => "photos", :action => "show" })

	# Routes to Edit photos 
	get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

	# Routes to delete photos
	get("/delete_photo/:id", { :controller => "photos", :action => "destroy" }) 


	end
