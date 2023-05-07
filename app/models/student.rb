class Student < ApplicationRecord
    has_many :subjects
    has_many :lecturers ,through: :subjects

    validates :name, :section ,presence: true 
    before_validation :ensure_validates

    private
    def  ensure_validates
        puts "before validation"
    end
end
