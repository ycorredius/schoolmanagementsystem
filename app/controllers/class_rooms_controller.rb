class ClassRoomsController < ApplicationController
    def index
        @class_rooms = ClassRoom.all
    end

    def new
        @class_room = ClassRoom.new    
    end

    def show
        
    end
end
