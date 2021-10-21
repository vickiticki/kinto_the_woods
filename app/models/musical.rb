class Musical < ApplicationRecord
    has_many :songs
    has_many :books
    has_many :creators, through: :books 
end
