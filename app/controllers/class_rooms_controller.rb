class ClassRoomsController < ApplicationController
    def index
        @class_rooms = ClassRoom.all
    end

    def new
        @class_room = ClassRoom.new    
    end

    def create
        @class_room = ClassRoom.new(class_params)
        binding.pry
        if @class_room.save
            redirect_to class_room_path(@class_room.id)
        else
            render :new
        end
    end

    def show
        @class_room = ClassRoom.find_by(id: params[:id])
    end

    private
    def class_params
        params.require(:class_room).permit(:name,:subject,:grade)
    end
end
