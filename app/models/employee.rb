class Employee < ApplicationRecord
    validates :alias, :title, uniqueness: true
    belongs_to :dog, counter_cache: true

    def to_s
        first_name + " " + last_name
    end
end
