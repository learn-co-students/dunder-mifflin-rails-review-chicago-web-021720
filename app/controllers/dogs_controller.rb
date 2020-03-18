class DogsController < ApplicationController

    def index
        set_all_dogs
    end

    def show
        set_dog_by_id
    end

    private

    def set_dog_by_id
        @dog = Dog.find(params[:id])
    end

    def set_all_dogs
        @dogs = Dog.all
    end

end
