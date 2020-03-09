class ClassRoomsController < ApplicationController
    before_action :find_classroom, only: [:show,:new_student]
    def index
        @class_rooms = ClassRoom.all
    end

    def new
        @class_room = ClassRoom.new   
        @teachers = Teacher.all
    end

    def create
        @class_room = ClassRoom.new(class_params)
        if @class_room.save
            @class_room.create_gradebook()
            redirect_to class_room_path(@class_room.id)
        else
            render :new
        end
    end

    def show
    end

    def add_student_to_class
        

    end

    def find_classroom
        @class_room = ClassRoom.find_by(id: params[:id])
    end

    private
    def class_params
        params.require(:class_room).permit(:name,:teacher_id)
    end
end
