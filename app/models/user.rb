class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    has_secure_password
    mount_uploader :picture, PictureUploader
    def full_name
        return name
    end
end
