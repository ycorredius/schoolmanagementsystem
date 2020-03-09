class AssignmentsController < ApplicationController
    before_action :find_classroom, only: [:index,:new,:create]
    
    def index
    end

    def new
        @assignment = @class_room.assignments.build
    end
    def create
        @assignment = Assignment.new(assignment_parms)
        if @assignment.save
            @class_room.students.each do |student|
                student.get_assignment(@assignment)
            end
        end
    end

    def find_classroom
        @class_room = ClassRoom.find_by(id: params[:class_room_id])
    end

    private

    def assignment_parms
        params.require(:assignment).permit(:title,:class_room_id)
    end
end
