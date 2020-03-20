class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dog_array
        @button = true
    end 

    def show
        if params[:id] == ":id"
            redirect_to dogs_path
        else 
            @dog = Dog.find(params[:id])
        end 
    end 

    def update
        @button = false
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dog_array
        render :index 

    end 

  

end
