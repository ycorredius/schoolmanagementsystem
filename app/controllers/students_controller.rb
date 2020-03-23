class StudentsController < ApplicationController
    before_action :find_student, only: [:show,:edit,:update,:delete]
    
    def assignments
        
        @student = Student.find_by(id:params[:student_id])
    end

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def show
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            @student.gradebook.create
            redirect_to student_path(@student)
        else
            render :new
        end
    end
    def edit
    end
    def update
        if @student.update(student_params)
            redirect_to student_path
        else
            render :edit
        end
    end 
    def find_student
        @student= Student.find_by(id: params[:id])
    end
    private
    def student_params
        params.require(:student).permit(:first_name,:last_name,:age,:email)
    end
end
