class Book < ApplicationRecord
    belongs_to :musical
    belongs_to :creator

end
