class TrainingRecord < ApplicationRecord
    has_many :event, dependent: :destroy
    accepts_nested_attributes_for :event, allow_destroy: true
    validates :comment, presence: true, length: { maximum: 100 }
    validates :event, presence: {
        message: ->  (rec, data) {
            I18n.t('activemodel.errors.models.training_record.childrenover')
        }
    }
    mount_uploader :picture, PictureUploader
end
