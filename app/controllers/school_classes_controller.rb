class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def show
        school_class
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class= SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class) 
    end

    def edit
        school_class
    end

    def update
        school_class.update(school_class_params)
        redirect_to school_class_path(@school_class) 
    end

    def destroy
    end

    private

    def school_class
        @school_class = SchoolClass.find_by(id: params[:id])
    end

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end
