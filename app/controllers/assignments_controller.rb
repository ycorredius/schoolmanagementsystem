class AssignmentsController < ApplicationController
    before_action :find_classroom, only: [:index,:new,:create]
    def index
    end
    def def show
        binding.pry
    end
    def new
        @assignment = @class_room.assignments.build
    end
    def create
        @assignment = @class_room.assignments.create(assignment_params)
        if @assignment.save
            @class_room.students.each do |student|
                student.grades.build
                student.grades.last.assignment = @assignment
                student.grades.last.class_room = @class_room
                student.grades.last.save
            end
            redirect_to class_room_path(@class_room.id)
        else
            render :new
        end
    end
    
    def find_classroom
        @class_room = ClassRoom.find_by(id: params[:class_room_id])
    end

    private

    def assignment_params
        params.require(:assignment).permit(:title,:class_room_id)
    end
end
