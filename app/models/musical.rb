class Musical < ApplicationRecord
    has_many :songs
    has_many :books
end
