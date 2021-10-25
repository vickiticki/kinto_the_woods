class ListedMusical < ApplicationRecord
    belongs_to :musical
    belongs_to :list
end
