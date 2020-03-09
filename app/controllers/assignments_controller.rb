class AssignmentsController < ApplicationController
    def index
        @class_room = ClassRoom.find_by(id: params[:class_room_id])
    end
end
