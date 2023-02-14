class Todo < ApplicationRecord
    validates :todo , presence: true
    validates :descrption , presence: true
    validates :done , presence: true
end
