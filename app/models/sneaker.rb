class Sneaker < ApplicationRecord
    has_many :comments, dependent: :destroy
end
