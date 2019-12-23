class TrainingRecord < ApplicationRecord
    mount_uploader :picture, PictureUploader
end
