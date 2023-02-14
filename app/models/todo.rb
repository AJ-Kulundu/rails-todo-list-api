class Todo < ApplicationRecord
    validates :todo , presence: true
    validates :description , presence: true
    validates :done , presence: true
end
