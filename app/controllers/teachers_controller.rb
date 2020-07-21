class TeachersController < ApplicationController
    before_action :authorized, only: [:stay_logged_in]

    def index
        @teachers = Teacher.all
        render json: @teachers
    end
    
    def show
        @teacher = Teacher.find(params[:id])
        render json: @teacher
    end

    def create
        @teacher = Teacher.create(teacher_params)
        if @teacher.valid?
            wristband = encode_token({teacher_id: @teacher.id})
            render json: {
                teacher: TeacherSerializer.new(@teacher),
                token: wristband
            }
        else
            render json: {error: "A teacher with that username exists"}
        end
  
    end

    def login
        @teacher = Teacher.find_by(username: params[:username])
        if @teacher && @teacher.authenticate(params[:password])
            wristband = encode_token({teacher_id: @teacher.id})
            render json: {
                teacher: TeacherSerializer.new(@teacher),
                token: wristband
            }
        else
            render json: {error: "Incorrect username and or password"}
        end 
    end

    def stay_logged_in
        wristband = encode_token({teacher_id: @teacher.id})
        render json: {
            teacher: TeacherSerializer.new(@teacher),
            token: wristband
        }
    end

    private

    def teacher_params
        params.permit(:username, :password, :first_name, :last_name, :subject, :email)
    end

end
