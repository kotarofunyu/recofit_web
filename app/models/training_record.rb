class TrainingRecord < ApplicationRecord
    validates :comment, presence: true, length: {maximum: 100}
    mount_uploader :picture, PictureUploader
    has_many :event, dependent: :destroy
    accepts_nested_attributes_for :event,allow_destroy: true
    
end
