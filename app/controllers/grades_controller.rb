class GradesController < ApplicationController
    def index
        @student =Student.find_by(id:params[:student_id])
    end
end
