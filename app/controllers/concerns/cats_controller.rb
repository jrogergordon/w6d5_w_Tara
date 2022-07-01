class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index
    end

    def show
        @cat = Cat.find_by(params[:id])
        render :show
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cat_url(@cat)
        else
            render :new
        end
    end

    def new
        render :new
    end

    def cat_params
        params.require(:cat).permit(:birthdate, :description, :name, :sex, :color)
    end
    



end