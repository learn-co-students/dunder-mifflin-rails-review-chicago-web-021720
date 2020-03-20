class DogsController < ApplicationController

    def index
        @dogs = Dog.all
        @popular_dogs = Dog.popular_dog_array

    end 

    def show
        @dog = Dog.find(params[:id])
    end 


end
