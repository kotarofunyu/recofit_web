class TrainingRecord < ApplicationRecord
    has_many :event, dependent: :destroy
    belongs_to :user
    accepts_nested_attributes_for :event, allow_destroy: true
    validates :comment, presence: true, length: { maximum: 100 }
    validates :event, presence: true
    mount_uploader :picture, PictureUploader
end
