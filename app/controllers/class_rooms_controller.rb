class ClassRoomsController < ApplicationController
    before_action :find_classroom, only: [:show,:new_student,:update]
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
            redirect_to class_room_path(@class_room.id)
        else
            render :new
        end
    end

    def show
    end

    def update
        @added_students = []
        params[:students][:ids].each do |student_id|
            if !student_id.empty?
                found_student = Student.find_by(id: student_id)
                if found_student
                    @added_students << found_student
                end
            end
        end
        @class_room.add_students(@added_students)
        redirect_to class_room_path(@class_room.id)
    end

    def new_students
        @students = Student.all
        @class_room = ClassRoom.find_by(id: params[:class_room_id])
    end

    def find_classroom
        @class_room = ClassRoom.find_by(id: params[:id])
    end

    private
    def class_params
        params.require(:class_room).permit(:subject,:teacher_id)
    end

end
