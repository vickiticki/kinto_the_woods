class Musical < ApplicationRecord
    has_many :songs
    has_many :books
    has_many :creators, through: :books 
    has_one_attached :poster
    has_many :listed_musicals
    has_many :lists, through: :listed_musicals
end
