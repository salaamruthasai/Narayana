class Subject < ApplicationRecord
  belongs_to :lecturer
  belongs_to :student
end
