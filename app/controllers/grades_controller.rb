class GradesController < ApplicationController
    def index
        @student =Student.find_by(id:params[:student_id])
    end

    def show
        @grade =  Grade.find_by(assignment_id: params[:assignment_id])
    end

    def update
        binding.pry
        @grade =  Grade.find_by(id: params[:id])
        if @grade.update(update_grade)
            redirect_to class_room_path(@grade.class_room)
        else
            render :show
        end
    end

    private 
    def update_grade
        params.require(:grade).permit(:letter_grade,:class_room_id,:assignment_id,:student_id)
    end
end
