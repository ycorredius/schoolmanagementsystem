class AdminsController < ApplicationController
   def index
      binding.pry
   end
   def show
      @admin = Admin.find_by(id: params[:format])
   end
end
