class Employee < ApplicationRecord
    belongs_to :dog, optional: true

    validates_presence_of :first_name, :last_name, :alias, :title, :office
    validates_uniqueness_of :alias, :title

    def name
        "#{first_name} #{last_name}"
    end
end
