class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true

    before_save {self.email = email.downcase}
end
