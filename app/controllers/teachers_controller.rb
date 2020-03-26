class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end
    def new
        @teacher = Teacher.new
    end
    def show
       @teacher = Teacher.find_by(id: params[:id])
       @class_room = ClassRoom.find_by(id: @teacher.class_room)
    end
    def create
        @teacher = Teacher.new(teacher_params)
        binding.pry
        if @teacher.save
            redirect_to teacher_path(@teacher.id)
        else
            render :new
        end
    end

    private

    def teacher_params
        params.require(:teacher).permit(:first_name,:last_name,:email)
    end
end
