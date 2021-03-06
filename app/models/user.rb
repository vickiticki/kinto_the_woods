class User < ApplicationRecord
    validates :name, presence: true
    # EMAIL_FORMAT_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true
    # , format: { with: EMAIL_FORMAT }, uniqueness: true

    before_save {self.email = email.downcase}

    has_secure_password

    has_many :lists
end
