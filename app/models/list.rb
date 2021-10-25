class List < ApplicationRecord
    has_many :listed_musicals
    has_many :musicals, through: listed_musicals
end
