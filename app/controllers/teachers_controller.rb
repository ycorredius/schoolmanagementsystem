class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end
    def new
        @teacher = Teacher.new
    end
    def show
       @teacher = Teacher.find_by(id: params[:id]) 
    end
    def create
        @teacher = Teacher.new
    end
end
