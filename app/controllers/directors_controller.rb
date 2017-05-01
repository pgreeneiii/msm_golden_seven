class DirectorsController < ApplicationController

   def index
      @directors = Director.all
      render("/directors/index.html.erb")
   end

   def new_form
      render("/directors/new_form.html.erb")
   end

   def new_row
      @director=Director.new

      @director.name = params[:name]
      @director.bio = params[:bio]
      @director.dob = params[:dob]
      @director.image_url = params[:image_url]

      @director.save

      render("details")
   end

   def details
      @director=Director.find(params[:id])

      render("/directors/details.html.erb")
   end

   def edit_form
      @director=Director.find(params[:id])

      render("/directors/edit_form.html.erb")
   end

   def update_director
      @director = Director.find(params[:id])
      @director.name = params[:name]
      @director.dob = params[:dob]
      @director.bio = params[:bio]
      @director.image_url = params[:image_url]

      @director.save

      render("details")
   end

   def delete_row
      @director=Director.find(params[:id])

      @director.destroy
      render("directors/delete_row.html.erb")
   end

end
