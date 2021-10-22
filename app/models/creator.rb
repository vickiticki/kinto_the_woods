class Creator < ApplicationRecord
    has_many :books
    has_many :musicals, through: :books
    # has_one_attached :portrait
end
