class DirectorsController < ApplicationController

   def index
      @directors = Director.all
      render("/directors/index.html.erb")
   end

end
