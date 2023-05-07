class Lecturer < ApplicationRecord
    before_validation :check_validation
    has_many :subjects
    has_many :students ,through: :subjects

    validates :name,:subject ,presence: true
     has_many :students ,dependent: :destroy

    private
    def check_validation
        puts "before validation"
    end


end
