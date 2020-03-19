class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
        
    end

    def strong_params
        params.require(:dog).permit(:name, :breed, :age)
    end
end
