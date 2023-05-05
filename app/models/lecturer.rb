class Lecturer < ApplicationRecord
    before_validation :check_validation

    validates :name,:subject ,presence: true


    private
    def check_validation
        puts "before validation"
    end


end
