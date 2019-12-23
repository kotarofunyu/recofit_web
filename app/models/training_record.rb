class TrainingRecord < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_one :event
    accepts_nested_attributes_for :event
end
