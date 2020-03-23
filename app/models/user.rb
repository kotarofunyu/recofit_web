class User < ApplicationRecord
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL, message: "は正しい形式で入力してください" }
    has_secure_password
    mount_uploader :picture, PictureUploader
    def full_name
        name
    end
end
