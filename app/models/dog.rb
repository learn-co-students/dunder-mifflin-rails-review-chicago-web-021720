class Dog < ApplicationRecord
    has_many :employees

    def self.sorted_dogs
        self.all.sort {|a, b| b.num_employees <=> a.num_employees}
    end

    def num_employees
        self.employees.count
    end
end
