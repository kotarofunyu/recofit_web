class TrainingRecord < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_one :event, dependent: :destroy
    accepts_nested_attributes_for :event
end
