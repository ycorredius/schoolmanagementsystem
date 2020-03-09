class GradebooksController < ApplicationController
    before_action :student_gradebook, only: [:show]
    def show
        binding.pry
        @student.gradebook
    end

    def student_gradebook
        @student = Student.find_by(id: params[:student_id])
    end
end
