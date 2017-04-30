Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/", {:controller => "movies", :action => "index"})

  #movie routes
  get("/movies", {:controller => "movies", :action => "index"})
  get("/movies/new", {:controller => "movies", :action => "new_form"})
  get("/create_movie", {:controller => "movies", :action => "new_row"})

  get("/movies/:id", {:controller => "movies", :action => "details"})

  get("/movies/edit/:id", {:controller => "movies", :action => "edit_form"})
  get("/update_movie/:id", {:controller => "movies", :action => "update_movie"})

  get("/delete_movie/:id", {:controller => "movies", :action => "delete_row"})

  #director routes
  get("/directors", {:controller => "directors", :action => "index"})

  #actor routes
  get("/actors", {:controller => "actors", :action => "index"})
end
