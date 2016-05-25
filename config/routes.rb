Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos
  get("/photos/new",           { :controller => "photos", :action => "new_form" })
  get("/photos/create_row",       { :controller => "photos", :action => "create_row" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/show/:id",       { :controller => "photos", :action => "show" })

  # Routes to UPDATE photos
  get("/photos/update/:id",           { :controller => "photos", :action => "update" })
  get("/photos/update_row/:id",       { :controller => "photos", :action => "update_row" })

  # Routes to DELETE photos
  get("/photos/delete/:id",       { :controller => "photos", :action => "delete" })


end
