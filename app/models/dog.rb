class Dog < ApplicationRecord
    has_many :employees 


    def self.popular_dog_array
        Dog.all.sort_by { |x| x.employees.length }
    end 



end
