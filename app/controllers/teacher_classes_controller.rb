class TeacherClassesController < ApplicationController
    def index
        @teacherclasses = TeacherClass.all
        render json: @teacherclasses
    end
end
