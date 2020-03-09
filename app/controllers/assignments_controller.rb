class AssignmentsController < ApplicationController
    before_action :find_classroom, only: [:index,:new,:create]
    
    def index
        binding.pry
    end

    def new
        @assignment = @class_room.assignments.build
    end
    def create
        binding.pry
        @assignment = @class_room.assignments.build(assignment_params)
        if @assignment.save
            @class_room.students.each do |student|
                
            end
            redirect_to class_room_assignments_path(@class_room.id)
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
