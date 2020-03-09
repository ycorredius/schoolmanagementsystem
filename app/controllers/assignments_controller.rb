class AssignmentsController < ApplicationController
    before_action :find_classroom, only: [:index,:new]
    
    def index
    end

    def new
        @assignment = @class_room.assignments.build
    end
    def create
        binding.pry
    end

    def find_classroom
        @class_room = ClassRoom.find_by(id: params[:class_room_id])
    end
end
