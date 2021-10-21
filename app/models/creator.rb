class Creator < ApplicationRecord
    has_many :books
    has_many :musicals, through: :books
end
